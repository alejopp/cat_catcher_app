import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/core/routes/routes.dart';
import 'package:cat_catcher_app/core/theme/app_styles.dart';
import 'package:cat_catcher_app/features/cat/presentation/providers/cat_provider.dart';
import 'package:cat_catcher_app/shared/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends ConsumerWidget {
  final TextEditingController searchController = TextEditingController();

  LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(ref),
        body: _buildBody(context, ref),
        backgroundColor: Color(0xFF330072),
      ),
    );
  }

  _buildAppbar(WidgetRef ref) {
    return AppBar(
      title: Text(
        AppStrings.landingScrrenTitle,
        style: AppStyles.bodyLargeBoldStyle,
      ),
      centerTitle: true,
      backgroundColor: Color(0xFF330072),
    );
  }

  _buildBody(BuildContext context, WidgetRef ref) {
    final searching =
        ref.watch(catNotifierProvider.select((state) => state.searching));
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xFF330072),
          floating: false,
          pinned: false,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding:
                const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            title: SizedBox(
              height: 40,
              child: TextField(
                onChanged: (value) {
                  ref.read(catNotifierProvider.notifier).filter(value);
                },
                controller: searchController,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                  color: Color(0xFF330072),
                  fontSize: 14.sp,
                ),
                decoration: InputDecoration(
                  hintText: AppStrings.searchBreadHint,
                  hintStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: searching
                      ? GestureDetector(
                          onTap: () {
                            searchController.clear();
                            ref.read(catNotifierProvider.notifier).clear();
                          },
                          child: Icon(
                            Icons.clear,
                            color: Color(0xFF330072),
                          ),
                        )
                      : Icon(
                          Icons.search,
                          color: Color(0xFF330072),
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        _buildCatList(ref),
      ],
    );
  }

  _buildCatList(WidgetRef ref) {
    final catState = ref.watch(catNotifierProvider);
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
              imageUrl:
                  cat.image?.url ?? "https://cdn2.thecatapi.com/images/bpc.jpg",
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
  }
}
