import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:flutter/material.dart';

BoxDecoration bodyDecoration() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppImages.splash_background),
    ),
  );
}