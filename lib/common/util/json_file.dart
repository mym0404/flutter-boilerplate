import '../../../export.dart';

class JsonFile {
  JsonFile(this.name);
  final String name;

  Json? load() => switch (di<LocalStorage>().getString(name)) {
        null => null,
        var string => Json.from(jsonDecode(string))
      };

  Future<void> save(Json data) => di<LocalStorage>().setString(name, jsonEncode(data));
}
