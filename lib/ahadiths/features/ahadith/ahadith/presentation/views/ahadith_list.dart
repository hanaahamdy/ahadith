import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_bloc.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_states.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/home.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/widgets/build_aya.dart';
import 'package:ahadith/ahadiths/features/home_screen/widgets/custom_appbar.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';

import '../widgets/build_grid_view.dart';

class AhadithScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double homeHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<AppBloc, DataStates>(
      builder: (context, state) {
        AppBloc cubit = AppBloc.get(context);
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCustomAppBar(
                  homeHeight: homeHeight, subTitle: "الاحاديث الاربعين"),
              buildGridView(cubit, homeHeight,),
            ],
          ),
        );
      },
    );
  }
}
