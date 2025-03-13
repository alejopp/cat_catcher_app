import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/usecases/fetch_cats_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cat_repository_provider.dart';

final getCatsUseCaseProvider = Provider<FetchCatsUseCase>((ref) {
  final repository = ref.watch(catRepositoryProvider);
  return FetchCatsUseCase(catRepository: repository);
});

final catNotifierProvider =
    StateNotifierProvider<CatNotifier, AsyncValue<List<Cat>>>((ref) {
  final useCase = ref.watch(getCatsUseCaseProvider);
  return CatNotifier(useCase);
});

class CatNotifier extends StateNotifier<AsyncValue<List<Cat>>> {
  final FetchCatsUseCase _getCatsUseCase;

  CatNotifier(this._getCatsUseCase) : super(const AsyncLoading()) {
    fetchCats();
  }

  Future<void> fetchCats() async {
    final result = await _getCatsUseCase();

    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
      (cats) => AsyncData(cats),
    );
  }
}
