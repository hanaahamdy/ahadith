import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:flutter/material.dart';

Container buildCustomAppBar({required double homeHeight, String? title,required String subTitle}) {
  return Container(
    height: homeHeight*.35,
    decoration: BoxDecoration(
        color: Colors.grey[300],
        image: DecorationImage(
            image: AssetImage(AppImages.splash_background),
            fit: BoxFit.cover)),
    child: Column(
      children: [
        SizedBox(height: homeHeight * .08),
        Image(
          image: AssetImage(AppImages.appbar_logoo),
        ),
        SizedBox(height: homeHeight * .03),
        ListTile(
          title: title!=null?AppTextStyles(
            text: title,
            fontSize: 16,
            textAlign: TextAlign.end,
          ):null,
          subtitle: AppTextStyles(
            text: subTitle,
            fontSize: 24,
            textAlign: TextAlign.end,
            textColor: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
