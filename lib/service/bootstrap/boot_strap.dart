import 'package:flutter_localizations/flutter_localizations.dart';

import '../../design/color/color_settings.dart';
import '../../design/theme.dart';
import '../../export.dart';
import '../../feature/home/ui/page/home_page.dart';
import '../../l10n/util/l10n_settings.dart';

class BootStrap extends StatelessWidget with WatchItMixin {
  const BootStrap({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkMode = watchValue((ColorSettings s) => s.data).isDarkMode;
    var locale = watchValue((L10NSettings s) => s.data).locale;

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
