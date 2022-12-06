import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import 'category_item.dart';

List<Model> items = [
  Model(
      leading_image: AppImages.quran,
      trail_image: AppImages.num_1,
      title: "الاحاديث الاربعين"),
  Model(
      leading_image: AppImages.play,
      trail_image: AppImages.num_2,
      title: " الاستماع الاحاديث"),
  Model(
      leading_image: AppImages.saved,
      trail_image: AppImages.num_3,
      title: "الاحاديث المحفوظه")
];

List<String> screens = ["Ahadith Screen", "Play Screen", "Saved Screen"];
List colors = [
  {
    "firstColor": AppColors.dark_green,
    "secondColor": AppColors.primaryColor,
  },
  {
    "firstColor": AppColors.red,
    "secondColor": AppColors.yellow,
  },
  {
    "firstColor": AppColors.red,
    "secondColor": AppColors.vilot,
  }
];

Expanded build_list_view(double homeHeight) {
  return Expanded(
    child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, screens[index]);
            },
            child: CategoryItem(
              colorOne: colors[index]["firstColor"],
              secondColor: colors[index]["secondColor"],
              homeHeight: homeHeight,
              itemsModel: items[index],
            ),
          );
        }),
  );
}
