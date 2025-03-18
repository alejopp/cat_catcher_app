import 'package:cat_catcher_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() => _opacity = 1.0);
    });
    Future.delayed(Duration(seconds: 5), () {
      if (context.mounted) {
        context.go(Routes.landingScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF330072),
        body: Center(
          child: AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _opacity,
            child: Image.asset('assets/images/white_cat.png', width: 150),
          ),
        ),
      ),
    );
  }
}
