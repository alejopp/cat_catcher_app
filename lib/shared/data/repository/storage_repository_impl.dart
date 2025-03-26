import 'package:cat_catcher_app/shared/data/datasource/storage_datasource.dart';
import 'package:cat_catcher_app/shared/domain/repository/storage_repository.dart';

class StorageRepositoryImpl extends StorageRepository {
  final StorageDataSource storageDataSource;

  StorageRepositoryImpl({
    required this.storageDataSource,
  });

  @override
  void clear(String key, type) {
    storageDataSource.clear(key, type);
  }

  @override
  getKey<T>(String key, type) {
    storageDataSource.getKey(key, type);
  }

  @override
  void removeKey(String key) {
    storageDataSource.removeKey(key);
  }

  @override
  void setKey<T>(String key, type) {
    storageDataSource.setKey(key, type);
  }
}
