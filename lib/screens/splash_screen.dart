import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safar_samarth/screens/graph_screen.dart';
import 'package:safar_samarth/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashscreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool isLoggedIn = false;
  late bool isAdmin = false;
  late bool isProvider = false;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceIn);
    _animationController.forward();
    super.initState();
    Timer(
      const Duration(seconds: 4),
          () =>
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => HomeScreen(),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ),
          ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFE81667),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image(
            image: const AssetImage(
              'assets/images/ss.png',
            ),
            // height: 480,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}