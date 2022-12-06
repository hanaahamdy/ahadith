import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../../../../../../core/utils/app_colors.dart';

FloatingActionButton buildFloatingActionButton({required String text,required Object hero}) {
  return FloatingActionButton(
    heroTag: hero,
    backgroundColor: AppColors.primaryColor,
    onPressed: () {
      Share.share(
        text,
      );
    },
    child: Icon(
      Icons.share,
      color: AppColors.white,
    ),
  );
}