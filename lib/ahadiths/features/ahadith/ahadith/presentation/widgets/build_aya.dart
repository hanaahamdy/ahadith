import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:flutter/material.dart';

import '../../data/model/hadith_moel.dart';



Widget buildAya({required double homeHeight,VoidCallback? action,required Hadith item}) {
  return GestureDetector(onTap:action ,
    child: Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image(fit: BoxFit.cover,
            image: AssetImage(AppImages.aya_front),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextStyles(
                textAlign: TextAlign.center,
                text: item.key,
                fontSize: 14,
                textColor: AppColors.yellow,
              ),
              SizedBox(height: 10,),
              AppTextStyles(
                textAlign: TextAlign.center,
                text: item.nameHadith,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textColor: AppColors.yellow,
              )
            ],
          )
        ],
      ),
      width: 140,
      height: homeHeight * .23,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.aya_back,
          ),
        ),
      ),
    ),
  );
}