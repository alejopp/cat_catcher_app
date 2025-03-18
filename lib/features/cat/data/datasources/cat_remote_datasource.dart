import 'package:cat_catcher_app/features/cat/data/models/cat_model.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:dartz/dartz.dart';

abstract class CatDatasource {
  Future<Either<ApiFailure, List<CatModel>>> fetchCats();
}
