import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/repository/cat_repository.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:dartz/dartz.dart';

class FetchCatsUseCase {
  final CatRepository _catRepository;

  FetchCatsUseCase({
    required CatRepository catRepository,
  }) : _catRepository = catRepository;

  Future<Either<ApiFailure, List<Cat>>> call() async {
    return _catRepository.fetchCats();
  }
}
