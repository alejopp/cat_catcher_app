import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource.dart';
import 'package:cat_catcher_app/features/cat/data/models/cat_model.dart';
import 'package:cat_catcher_app/features/network/data/api_endpoints.dart';
import 'package:cat_catcher_app/features/network/data/services/network_service.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:cat_catcher_app/features/network/domain/entities/custom_response.dart';
import 'package:dartz/dartz.dart';

class CatRemoteDatasourceImpl extends CatDatasource {
  final NetworkService networkService;

  CatRemoteDatasourceImpl(this.networkService);

  @override
  Future<Either<ApiFailure, List<CatModel>>> fetchCats() async {
    final Either<ApiFailure, CustomResponse> response =
        await networkService.get(ApiEndpoint.breeds());

    return response.fold((l) => Left(l), (r) {
      final List<dynamic> jsonData = r.data;
      final List<CatModel> catModelData =
          jsonData.map((value) => CatModel.fromJson(value)).toList();
      return Right(catModelData);
    });
  }
}
