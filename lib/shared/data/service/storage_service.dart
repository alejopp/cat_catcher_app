abstract class StorageService {
  Future<void> removeKey(String key);

  Future<void> setKey<T>(String key, dynamic type);

  Future<T?> getKey<T>(String key, dynamic type);

  Future<void> clear();
}
