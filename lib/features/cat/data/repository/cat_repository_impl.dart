import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/repository/cat_repository.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:dartz/dartz.dart';

class CatRepositoryImpl extends CatRepository {
  final CatRepository catRepository;

  CatRepositoryImpl(this.catRepository);

  @override
  Future<Either<ApiFailure, List<Cat>>> fetchCats() {
    return catRepository.fetchCats();
  }
}
