import '../export.dart';
import 'color/color_settings.dart';

class AppTheme {
  static final AppTheme instance = AppTheme._internal();
  AppTheme._internal();

  final _textTheme = const TextTheme(
    displayLarge: TS.displayLarge,
    displayMedium: TS.displayMedium,
    displaySmall: TS.displaySmall,
    headlineLarge: TS.headLarge,
    headlineMedium: TS.headMedium,
    headlineSmall: TS.headLarge,
    titleLarge: TS.titleLarge,
    titleMedium: TS.titleMedium,
    titleSmall: TS.titleSmall,
    labelLarge: TS.labelLarge,
    labelMedium: TS.labelMedium,
    labelSmall: TS.labelSmall,
    bodyLarge: TS.bodyLarge,
    bodyMedium: TS.bodyMedium,
    bodySmall: TS.bodySmall,
  );

  ThemeData createTheme(Brightness brightness) {
    ColorScheme colorScheme = di<ColorSettings>().getColorSchemeByBrightness(brightness);

    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      textTheme: _textTheme,
    );
  }
}

extension BuildContextThemeExtension on BuildContext {
  ColorScheme get c => Theme.of(this).colorScheme;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  TextTheme get text => Theme.of(this).textTheme;
}

extension ColorSchemeExtension on ColorScheme {
  // Color get surfaceGray =>
  //     brightness == Brightness.light ? const Color(0xFFE5E7EB) : const Color(0xFF3A3A3A);
  // Add mores!
}
