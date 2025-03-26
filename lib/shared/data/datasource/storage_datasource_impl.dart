import 'package:cat_catcher_app/shared/data/datasource/storage_datasource.dart';
import 'package:cat_catcher_app/shared/data/service/storage_service.dart';

class StorageDatasourceImpl extends StorageDataSource {
  final StorageService storeService;

  StorageDatasourceImpl({
    required this.storeService,
  });

  @override
  Future<void> clear(String key, type) async {
    await storeService.clear();
  }

  @override
  Future<dynamic> getKey<T>(String key, type) async {
    return storeService.getKey(key, type);
  }

  @override
  Future<void> removeKey(String key) async {
    await storeService.removeKey(key);
  }

  @override
  Future<void> setKey<T>(String key, type) async {
    storeService.setKey(key, type);
  }
}
