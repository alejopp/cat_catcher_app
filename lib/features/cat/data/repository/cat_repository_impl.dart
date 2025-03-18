import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource.dart';
import 'package:cat_catcher_app/features/cat/data/mappers/cat_mapper.dart';
import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/repository/cat_repository.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:dartz/dartz.dart';

class CatRepositoryImpl extends CatRepository {
  final CatDatasource catDatasource;

  CatRepositoryImpl(this.catDatasource);

  @override
  Future<Either<ApiFailure, List<Cat>>> fetchCats() async {
    final datasourceResponse = await catDatasource.fetchCats();

    return datasourceResponse.fold(
        (l) => Left(
              ApiFailure(
                  statusCode: l.statusCode,
                  statusMessage: l.statusMessage,
                  identifier: l.identifier),
            ), (catModelList) {
      final catList = catModelList
          .map((catModel) => CatMapper.fromCatModelToCat(catModel))
          .toList();
      return Right(catList);
    });
  }
}
