import 'package:cat_catcher_app/shared/data/datasource/storage_datasource.dart';
import 'package:cat_catcher_app/shared/data/datasource/storage_datasource_impl.dart';
import 'package:cat_catcher_app/shared/data/repository/storage_repository_impl.dart';
import 'package:cat_catcher_app/shared/data/service/storage_service.dart';
import 'package:cat_catcher_app/shared/domain/repository/storage_repository.dart';
import 'package:cat_catcher_app/shared/presentation/providers/storage_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final FutureProvider<StorageDataSource> storageDatasourceProvider =
    FutureProvider<StorageDataSource>((ref) async {
  final StorageService storageService =
      await ref.watch(storageServiceProvider.future);
  return StorageDatasourceImpl(storeService: storageService);
});

final FutureProvider<StorageRepository> storageProvider =
    FutureProvider<StorageRepository>((ref) async {
  final StorageDataSource storageDatasource =
      await ref.watch(storageDatasourceProvider.future);
  return StorageRepositoryImpl(storageDataSource: storageDatasource);
});
