import 'package:flutter/material.dart';

import '../../data/cubit/app_bloc.dart';
import '../../data/model/hadith_moel.dart';

Expanded buildTabBarView({required AppBloc cubit,required Hadith hadithModel}) {
  return Expanded(
    child: Container(
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        children: cubit.children(hadithModel),
      ),
    ),
  );
}