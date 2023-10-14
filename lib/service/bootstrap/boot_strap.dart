import 'package:flutter_localizations/flutter_localizations.dart';

import '../../design/color/color_settings.dart';
import '../../design/theme.dart';
import '../../export.dart';
import '../../feature/home/ui/page/home_page.dart';
import '../../l10n/util/l10n_settings.dart';

Future<void> bootStrap() async {
  await runZonedGuarded(
    () async {
      await registerSingletons();
      _registerErrorHandler();
      runApp(const BootStrapApp());
    },
    (error, stack) {
      log.e('Zone Error Occurred', error: error, stackTrace: stack);
    },
  );
}

void _registerErrorHandler() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    log.e('flutter Error Occurred', error: details.exception, stackTrace: details.stack);
  };
  PlatformDispatcher.instance.onError = (exception, stackTrace) {
    log.e('Platform Error Occurred', error: exception, stackTrace: stackTrace);
    return true;
  };
}

class BootStrapApp extends StatelessWidget with WatchItMixin {
  const BootStrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkMode = watchPropertyValue((ColorSettings settings) => settings.isDarkMode);
    var locale = watchPropertyValue((L10NSettings settings) => settings.locale);

    return MaterialApp(
      locale: locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: AppTheme.instance.createTheme(Brightness.light),
      darkTheme: AppTheme.instance.createTheme(Brightness.dark),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const HomePage(),
    );
  }
}
