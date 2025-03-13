import 'package:cat_catcher_app/features/cat/presentation/screens/cat_detail_screen.dart';
import 'package:cat_catcher_app/features/cat/presentation/screens/landing_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String landingScreen = "/";
  static String catDetailScreen = "/detail_screen";
}

final routes = GoRouter(
  routes: [
    GoRoute(
      path: Routes.landingScreen,
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: Routes.catDetailScreen,
      builder: (context, state) => const CatDetailScreen(),
    ),
  ],
);
