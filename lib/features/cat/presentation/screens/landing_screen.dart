import 'package:cat_catcher_app/core/constants/app_strings.dart';
import 'package:cat_catcher_app/core/routes/routes.dart';
import 'package:cat_catcher_app/features/cat/presentation/providers/cat_provider.dart';
import 'package:cat_catcher_app/shared/widgets/cat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        //TODO Change color by a palette
        appBar: _buildAppbar(),
        body: _buildBody(context, ref),
        backgroundColor: Color(0xFF330072),
      ),
    );
  }

  _buildAppbar() {
    return AppBar(
      title: Text(
        AppStrings.landingScrrenTitle,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Color(0xFF330072),
    );
  }

  _buildBody(BuildContext context, WidgetRef ref) {
    final catState = ref.watch(catNotifierProvider);
    return catState.when(
      data: (cats) => ListView.builder(
        itemCount: cats.length,
        itemBuilder: (context, index) {
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
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text(AppStrings.errorMessage(error))),
    );
  }
}
