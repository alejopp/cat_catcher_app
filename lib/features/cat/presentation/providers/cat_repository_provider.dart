import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource.dart';
import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource_impl.dart';
import 'package:cat_catcher_app/features/cat/data/repository/cat_repository_impl.dart';
import 'package:cat_catcher_app/features/cat/domain/repository/cat_repository.dart';
import 'package:cat_catcher_app/features/network/domain/services/network_service.dart';
import 'package:cat_catcher_app/features/network/presentation/provider/network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catDatasourceProvider = Provider.family<CatDatasource, NetworkService>(
  (_, networkService) => CatRemoteDatasourceImpl(networkService),
);

final catRepositoryProvider = Provider<CatRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final dataSource = ref.watch(catDatasourceProvider(networkService));
  return CatRepositoryImpl(dataSource);
});
