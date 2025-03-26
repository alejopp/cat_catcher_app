import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/core/routes/routes.dart';
import 'package:cat_catcher_app/features/cat/presentation/providers/cat_provider.dart';
import 'package:cat_catcher_app/features/network/presentation/provider/connectivity_provider.dart';
import 'package:cat_catcher_app/shared/presentation/widgets/custom_card_widget.dart';
import 'package:cat_catcher_app/shared/presentation/widgets/custom_drawer.dart';
import 'package:cat_catcher_app/shared/presentation/widgets/custom_search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LandingScreen extends ConsumerStatefulWidget {
  const LandingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _LandingScreenState();
  }
}

class _LandingScreenState extends ConsumerState {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(ref),
        body: _buildBody(context, ref),
        drawer: CustomDrawer(),
      ),
    );
  }

  _buildAppbar(WidgetRef ref) {
    return AppBar(
      title: Text(
        AppStrings.landingScrrenTitle,
      ),
      centerTitle: true,
    );
  }

  _buildBody(BuildContext context, WidgetRef ref) {
    ref.listen(connectivityProvider, (previous, next) async {
      if (next.isConnected) {
        await ref.read(catNotifierProvider.notifier).fetchCats();
      }
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              next.isConnected ? AppStrings.connected : AppStrings.noConnected,
            ),
          ),
        );
      }
    });

    final bool searching =
        ref.watch(catNotifierProvider.select((value) => value.searching));

    return CustomScrollView(
      slivers: [
        CustomSearchBarWidget(
          textEditingController: _searchController,
          searching: searching,
          onTextChanged: (value) {
            ref.read(catNotifierProvider.notifier).filterCat(value);
          },
          onCancelSearch: () {
            FocusScope.of(context).unfocus();
            _searchController.clear();
            ref.read(catNotifierProvider.notifier).clear();
          },
        ),
        _buildCatList(ref),
      ],
    );
  }

  _buildCatList(WidgetRef ref) {
    final connectivityState = ref.watch(connectivityProvider);
    final catState = ref.watch(catNotifierProvider);
    if (connectivityState.isConnected) {
      if (catState.loading) {
        return const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: CircularProgressIndicator()),
        );
      } else if (catState.error) {
        return SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: Text(AppStrings.errorMessage('error'))),
        );
      } else {
        final cats = catState.filteredCats;
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final cat = cats[index];
              return CustomCardWidget(
                catBreed: cat.name,
                imageUrl: cat.image?.url ??
                    "https://cdn2.thecatapi.com/images/bpc.jpg",
                country: cat.origin,
                countryFlagUrl:
                    'https://flagcdn.com/${cat.countryCode.toLowerCase()}.svg',
                intelligence: cat.intelligence,
                onMorePressed: () {
                  context.push(Routes.catDetailScreen, extra: cat);
                },
              );
            },
            childCount: cats.length,
          ),
        );
      }
    } else {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: Lottie.asset(
            'assets/animations/no_internet_lottie.json',
            width: 200.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }
}
