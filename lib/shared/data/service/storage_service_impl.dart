import 'package:cat_catcher_app/shared/data/service/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServiceImplementation extends StorageService {
  SharedPreferencesWithCache prefs;

  StorageServiceImplementation(this.prefs);

  @override
  Future<void> clear() async {
    await prefs.clear();
  }

  @override
  Future<T?> getKey<T>(String key, dynamic type) async {
    switch (type) {
      case int _:
        return prefs.getInt(key) as T?;
      case String _:
        return prefs.getString(key) as T?;

      case double _:
        return prefs.getDouble(key) as T?;

      case bool _:
        return prefs.getBool(key) as T?;

      default:
        throw UnimplementedError(
            'GET not implemented for type ${T.runtimeType}');
    }
  }

  @override
  Future<void> setKey<T>(String key, dynamic type) async {
    switch (type) {
      case int _:
        prefs.setInt(key, type);
        break;

      case String _:
        prefs.setString(key, type);
        break;

      case double _:
        prefs.setDouble(key, type);
        break;

      case bool _:
        prefs.setBool(key, type);
        break;

      default:
        throw UnimplementedError(
            'Set not implemented for type ${T.runtimeType}');
    }
  }

  @override
  Future<void> removeKey(String key) async {
    try {
      await prefs.remove(key);
    } catch (e) {
      print(e);
    }
  }
}
