import 'package:local_file_preferences/local_file_preferences.dart';
import 'package:logger/logger.dart';

import '../../design/color/color_manager.dart';
import '../../export.dart';
import '../l10n/util/l10n_manager.dart';
import '../layout/layout_manager.dart';

Future<void> registerSingletons() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  registerGlobalStorage(
      SharedPreferencesStorage(sharedPreferences: sharedPreferences));
  di.registerSingleton<LocalStorage>(
      SharedPreferencesLocalStorage(sharedPreferences));
  di.registerSingleton(ColorManager());
  di.registerSingleton(L10NManager());
  di.registerSingleton(
    Logger(
      printer: PrettyPrinter(
        colors: true,
        lineLength: 40,
        printEmojis: false,
        printTime: false,
        methodCount: 1,
        errorMethodCount: 5,
      ),
    ),
  );
  di.registerSingleton(LayoutManager());
}

Logger get log => di();
