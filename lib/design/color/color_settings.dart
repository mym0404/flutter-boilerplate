import '../../common/util/save_load_mixin.dart';
import '../../export.dart';

part 'color_settings.freezed.dart';
part 'color_settings.g.dart';
part 'theme_colors.dart';

@freezed
class ColorSettingsData with _$ColorSettingsData {
  const ColorSettingsData._();
  const factory ColorSettingsData({
    @Default(true) bool isDarkMode,
  }) = _ColorSettingsData;

  factory ColorSettingsData.fromJson(Map<String, dynamic> json) =>
      _$ColorSettingsDataFromJson(json);
}

class ColorSettings with SettingsMixin<ColorSettingsData> {
  @override
  ColorSettingsData get fallback => const ColorSettingsData();

  @override
  String get fileName => 'color_settings.dat';

  @override
  ColorSettingsData fromJson(Json json) => ColorSettingsData.fromJson(json);

  bool get isDarkMode => data.value.isDarkMode;
  ColorScheme get colorScheme => isDarkMode ? _appColorSchemeDark : _appColorSchemeLight;

  ColorScheme getColorSchemeByBrightness(Brightness brightness) =>
      brightness == Brightness.light ? _appColorSchemeLight : _appColorSchemeDark;

  void setDarkMode(bool isDarkMode) => data.value = value.copyWith(isDarkMode: isDarkMode);
  void toggleDarkMode() => data.value = data.value.copyWith(isDarkMode: !data.value.isDarkMode);
}
