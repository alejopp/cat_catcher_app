abstract class StorageDataSource {
  Future<dynamic> getKey<T>(String key, dynamic type);
  Future<void> setKey<T>(String key, dynamic type);
  Future<void> removeKey(String key);
  Future<void> clear(String key, dynamic type);
}
