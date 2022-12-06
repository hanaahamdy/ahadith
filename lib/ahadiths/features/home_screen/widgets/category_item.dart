import 'package:ahadith/ahadiths/features/home_screen/model/model.dart';
import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:flutter/material.dart';

Padding CategoryItem(
    {required double homeHeight,
    required Model itemsModel,
    required var colorOne,
    required var secondColor}) {
  return Padding(
    padding: EdgeInsets.only(top: 15, left: 12, right: 12),
    child: Container(
      height: homeHeight * .2,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [colorOne, secondColor],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(itemsModel.leading_image),
            height: homeHeight * .14,
          ),
          AppTextStyles(
            text: itemsModel.title,
            textColor: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          Image(
            image: AssetImage(itemsModel.trail_image),
            height: homeHeight * .07,
          ),
        ],
      ),
//
    ),
  );
}
