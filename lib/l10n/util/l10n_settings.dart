import '../../common/util/settings_mixin.dart';
import '../../export.dart';

enum L10NSettingsValue {
  enUS(Locale('en', 'US')),
  ko(Locale('ko')),
  ;

  final Locale locale;

  const L10NSettingsValue(this.locale);
}

class L10NSettings with SettingsMixin<L10NSettingsValue> {
  L10NSettings() {
    S.load(load().locale);
  }

  @override
  L10NSettingsValue get fallback =>
      Intl.getCurrentLocale().startsWith('en') ? L10NSettingsValue.enUS : L10NSettingsValue.ko;

  @override
  String get fileName => 'L10N_settings.dat';

  @override
  Json toJson() {
    return {'locale': value.name};
  }

  @override
  L10NSettingsValue fromJson(Json json) =>
      L10NSettingsValue.values.firstWhereOrNull((element) => element.name == json['locale']) ??
      L10NSettingsValue.enUS;

  Future<void> changeLocale(L10NSettingsValue value) async {
    await S.load(value.locale);
    data.value = value;
  }
}
