import 'dart:async';

import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    duration_for_navigate();

    logo_animation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.splash_background,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(AppImages.logo),
            ),
            SlideTransition(
              position: slidingAnimation,
              child: Text(
                "الاربعين النبوية",
                style: TextStyle(
                    fontSize: 28,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void logo_animation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 4), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  void duration_for_navigate() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
          context, "Home Screen", (route) => false);
    });
  }
}
