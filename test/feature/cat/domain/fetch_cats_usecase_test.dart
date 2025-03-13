import 'package:cat_catcher_app/features/cat/domain/repository/cat_repository.dart';
import 'package:cat_catcher_app/features/cat/domain/usecases/fetch_cats_usecase.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fake_cat_list.dart';

// ✅ Creamos un Mock del CatRepository con Mocktail
class MockCatRepository extends Mock implements CatRepository {}

void main() {
  late FetchCatsUseCase fetchCatsUseCase;
  late MockCatRepository mockCatRepository;

  setUp(() {
    mockCatRepository = MockCatRepository();
    fetchCatsUseCase = FetchCatsUseCase(catRepository: mockCatRepository);
  });

  test('should return a cat list when repository fetch data successfully',
      () async {
    // arrange
    when(() => mockCatRepository.fetchCats())
        .thenAnswer((_) async => Right(fakeCatList));

    // action
    final result = await fetchCatsUseCase();

    // assert
    expect(result, Right(fakeCatList));
    verify(() => mockCatRepository.fetchCats()).called(1);
    verifyNoMoreInteractions(mockCatRepository);
  });

  test('should return ApiFailure when data from repository fail', () async {
    final exception =
        ApiFailure(statusMessage: "Error de conexión", statusCode: 500);

    // arrange
    when(() => mockCatRepository.fetchCats())
        .thenAnswer((_) async => Left(exception));

    // action
    final result = await fetchCatsUseCase();

    // assert
    expect(result, Left(exception));
    verify(() => mockCatRepository.fetchCats()).called(1);
    verifyNoMoreInteractions(mockCatRepository);
  });
}
