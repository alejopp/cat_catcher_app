import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/network/data/api_endpoints.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:cat_catcher_app/features/network/domain/services/network_service.dart';
import 'package:dartz/dartz.dart';


class CatRemoteDatasourceImpl extends CatRemoteDatasource {
  final NetworkService networkService;
  CatRemoteDatasourceImpl(this.networkService);

  @override
  Future<Either<ApiFailure, List<Cat>>> fetchCats() async {
    final response = networkService.get(
      ApiEndpoint.breeds()
    );

    return Right([]);
  }
}
