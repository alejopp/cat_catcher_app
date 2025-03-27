import 'package:cat_catcher_app/features/cat/domain/entities/cat.dart';
import 'package:cat_catcher_app/features/cat/presentation/screens/cat_detail_screen.dart';
import 'package:cat_catcher_app/features/cat/presentation/screens/cat_webview_screen.dart';
import 'package:cat_catcher_app/features/cat/presentation/screens/landing_screen.dart';
import 'package:cat_catcher_app/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String splashScreen = "/";
  static String landingScreen = "/landing_screen";
  static String catDetailScreen = "/detail_screen";
  static String catWebViewScreen = "/cat_web_view_screen";
}

final routes = GoRouter(
  routes: [
    GoRoute(
      path: Routes.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.landingScreen,
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      path: Routes.catDetailScreen,
      builder: (context, state) {
        final params = state.extra as Cat;
        return CatDetailScreen(catData: params);
      },
    ),
    GoRoute(
      path: Routes.catWebViewScreen,
      builder: (context, state) {
        final params = state.extra as CatWebViewParams;
        return CatWebViewScreen(
          params: params,
        );
      },
    ),
  ],
);
