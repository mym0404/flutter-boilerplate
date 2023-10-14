import 'package:logger/logger.dart';

import '../../design/color/color_settings.dart';
import '../../export.dart';
import '../../l10n/util/l10n_settings.dart';

Future<void> registerSingletons() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  di.registerSingleton<LocalStorage>(SharedPreferencesLocalStorage(sharedPreferences));
  di.registerSingleton(ColorSettings());
  di.registerSingleton(L10NSettings());
  di.registerSingleton(
    Logger(
      printer: PrefixPrinter(
        PrettyPrinter(
          colors: false,
          methodCount: 2,
        ),
        error: '🔥',
        info: '💡',
      ),
    ),
  );
}

Logger get log => di<Logger>();
