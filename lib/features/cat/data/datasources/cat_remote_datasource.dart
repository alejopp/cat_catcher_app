import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:dartz/dartz.dart';

abstract class CatRemoteDatasource {
  Future<Either<ApiFailure, List<Cat>>> fetchCats();
}
