import 'package:ahadith/ahadiths/features/home_screen/model/model.dart';
import 'package:ahadith/ahadiths/features/home_screen/widgets/custom_appbar.dart';
import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../widgets/list_view.dart';

class HomeScreen extends StatelessWidget {
  List colors = [AppColors()];

  @override
  Widget build(BuildContext context) {
    double homeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          buildCustomAppBar(
              homeHeight: homeHeight,
              title: "الاربعين النبوية",
              subTitle: " لحفظ وسماع الاحاديث النبوية "),
          build_list_view(homeHeight),
        ],
      ),
    );
  }
}
