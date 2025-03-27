import 'package:cat_catcher_app/core/constants/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/routes.dart';
import 'core/theme/theme_provider.dart';
import 'l10n/app_localizations.dart';
import 'l10n/locale_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        locale: locale,
        supportedLocales: [
          Locale('en', ''),
          Locale('es', ''),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        title: AppConfig.appName,
        theme: themeData,
        routerConfig: routes,
      ),
    );
  }
}
