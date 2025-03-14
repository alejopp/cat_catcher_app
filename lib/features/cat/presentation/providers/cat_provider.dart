import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/domain/usecases/fetch_cats_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cat_repository_provider.dart';

final getCatsUseCaseProvider = Provider<FetchCatsUseCase>((ref) {
  final repository = ref.watch(catRepositoryProvider);
  return FetchCatsUseCase(catRepository: repository);
});

final catNotifierProvider = StateNotifierProvider<CatNotifier, CatState>((ref) {
  final useCase = ref.watch(getCatsUseCaseProvider);
  return CatNotifier(useCase);
});

class CatNotifier extends StateNotifier<CatState> {
  final FetchCatsUseCase _getCatsUseCase;

  CatNotifier(this._getCatsUseCase) : super(CatState()) {
    fetchCats();
  }

  Future<void> fetchCats() async {
    final result = await _getCatsUseCase();

    result.fold(
      (failure) {
        state = state.copyWith(loading: false, error: true);
      },
      (cats) {
        state = state.copyWith(cats: cats, filteredCats: cats, loading: false);
      },
    );
  }

  void filterCat(String query) {
    if (query.isEmpty) {
      state = state.copyWith(filteredCats: state.cats, searching: false);
    } else {
      final filteredCats = state.cats
          .where((cat) => cat.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
      state = state.copyWith(filteredCats: filteredCats, searching: true);
    }
  }

  void clear() {
    state = state.copyWith(filteredCats: state.cats, searching: false);
  }
}

class CatState {
  final List<Cat> cats;
  final List<Cat> filteredCats;
  final bool loading;
  final bool error;
  final bool searching;

  CatState({
    this.cats = const [],
    this.filteredCats = const [],
    this.loading = true,
    this.error = false,
    this.searching = false,
  });

  CatState copyWith({
    List<Cat>? cats,
    List<Cat>? filteredCats,
    bool? loading,
    bool? error,
    bool? searching,
  }) =>
      CatState(
        cats: cats ?? this.cats,
        filteredCats: filteredCats ?? this.filteredCats,
        loading: loading ?? this.loading,
        error: error ?? this.error,
        searching: searching ?? this.searching,
      );
}
