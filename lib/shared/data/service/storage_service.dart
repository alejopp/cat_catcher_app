abstract class StorageService {
  Future<void> removeKey(String key);

  Future<void> setKey<T>(String key, T value);

  Future<T?> getKey<T>(String key);

  Future<void> clear();
}
