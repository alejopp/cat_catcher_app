import 'package:cat_catcher_app/app/presentation/app_startup.dart';
import 'package:cat_catcher_app/core/constants/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/routes/routes.dart';
import '../core/theme/theme_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = ref.watch(themeProvider);
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: AppStartup(
        onLoaded: (_) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppConfig.appName,
          theme: themeData,
          routerConfig: routes,
        ),
      ),
    );
  }
}
