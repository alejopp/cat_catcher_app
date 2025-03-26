abstract class StorageRepository {
  dynamic getKey<T>(String key, dynamic type);
  void setKey<T>(String key, dynamic type);
  void removeKey(String key);
  void clear(String key, dynamic type);
}
