
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_bloc.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

Container buildTabBar(AppBloc cubit) {
  return Container(child:TabBar(
    physics: BouncingScrollPhysics(),
    indicatorColor: AppColors.light_grey,
    indicatorWeight: 1,
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey,
    labelPadding: EdgeInsets.all(0),
    tabs: cubit.tabs,
  ) ,);
}