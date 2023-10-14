import 'package:local_file_preferences/local_file_preferences.dart';
import 'package:logger/logger.dart';

import '../../design/color/color_settings.dart';
import '../../export.dart';
import '../../l10n/util/l10n_settings.dart';

Future<void> registerSingletons() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  registerGlobalStorage(SharedPreferencesStorage(sharedPreferences: sharedPreferences));
  di.registerSingleton<LocalStorage>(SharedPreferencesLocalStorage(sharedPreferences));
  di.registerSingleton(ColorSettings());
  di.registerSingleton(L10NSettings());
  di.registerSingleton(
    Logger(
      printer: PrefixPrinter(
        PrettyPrinter(
          colors: false,
        ),
        error: '⛔',
        info: '💡',
        debug: '🌙',
      ),
    ),
  );
}
