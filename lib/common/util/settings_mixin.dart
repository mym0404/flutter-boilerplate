import '../../export.dart';
import 'json_file.dart';
import 'throttler.dart';

mixin SettingsMixin<T> {
  late final _file = JsonFile(fileName);
  final _throttle = Throttler(const Duration(seconds: 2));

  late final ValueNotifier<T> data = ValueNotifier(load())..addListener(scheduleSave);
  T get value => data.value;

  T load() {
    try {
      Json? json = _file.load();
      if (json == null) throw 0;
      return fromJson(json);
    } catch (e) {
      return fallback;
    }
  }

  Future<void> save() async {
    try {
      await _file.save(toJson());
    } on Exception catch (e) {
      log.e('failed save', error: e);
    }
  }

  Future<void> scheduleSave() async => _throttle.call(save);

  /// Serialization
  String get fileName;
  Json toJson() {
    try {
      return (data.value as dynamic).toJson() as Json;
    } catch (e) {
      log.e('failed toJson', error: e);
      return {};
    }
  }

  T fromJson(Json json);
  T get fallback;
}
