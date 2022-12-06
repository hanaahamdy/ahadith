import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/widgets/build_aya.dart';
import 'package:flutter/material.dart';

import '../../data/cubit/app_bloc.dart';
import '../views/home.dart';

Expanded buildGridView(AppBloc cubit, double homeHeight) {
  return Expanded(
    child: GridView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: cubit.hadithlist.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
      itemBuilder: (context, index) => buildAya(
          action: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  hadithModel: cubit.hadithlist[index],
                ),
              ),
            );
          },
          homeHeight: homeHeight,
          item: cubit.hadithlist[index]),
    ),
  );
}
