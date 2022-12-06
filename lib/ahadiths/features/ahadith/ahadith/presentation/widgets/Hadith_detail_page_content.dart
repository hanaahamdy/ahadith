import 'package:ahadith/core/utils/app_colors.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:flutter/material.dart';

import 'build_floating_action_button.dart';

ListView HadithDetailPageContent({required String text,required Object hero}) {
  return ListView(padding: EdgeInsets.all(0),
    physics: BouncingScrollPhysics(),
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: AppTextStyles(
            height: 1.6,
            textAlign: TextAlign.end,
            text: text,
            fontSize: 18,
            fontWeight: FontWeight.w800,
            textColor: AppColors.primaryColor,
          ),
        ),
      )
     ,buildFloatingActionButton(text: text,hero:hero ),   ],
  );
}