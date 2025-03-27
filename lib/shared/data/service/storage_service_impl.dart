import 'package:cat_catcher_app/shared/data/service/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServiceImpl extends StorageService {
  SharedPreferencesWithCache prefs;

  StorageServiceImpl(this.prefs);

  @override
  Future<void> clear() async {
    await prefs.clear();
  }

  @override
  Future<T?> getKey<T>(String key) async {
    switch (T) {
      case int:
        final t = prefs.getInt(key) as T?;
        return t;
      case String:
        return prefs.getString(key) as T?;
      case double:
        return prefs.getDouble(key) as T?;
      case bool:
        return prefs.getBool(key) as T?;

      default:
        throw UnimplementedError(
            'GET not implemented for type ${T.runtimeType}');
    }
  }

  @override
  Future<void> setKey<T>(String key, T value) async {
    switch (T) {
      case int:
        prefs.setInt(key, value as int);
        break;

      case String:
        prefs.setString(key, value as String);
        break;

      case double:
        prefs.setDouble(key, value as double);
        break;

      case bool:
        prefs.setBool(key, value as bool);
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
