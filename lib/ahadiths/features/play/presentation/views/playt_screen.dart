import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_states.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/audio.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/widgets/build_aya.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/widgets/build_grid_view.dart';
import 'package:ahadith/ahadiths/features/home_screen/widgets/custom_appbar.dart';
import 'package:ahadith/ahadiths/features/play/presentation/views/play_oudio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ahadith/ahadith/data/cubit/app_bloc.dart';
import '../../../home_screen/widgets/list_view.dart';

class PlayScreen extends StatefulWidget {
  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double rating = 12.0;

  @override
  Widget build(BuildContext context) {
    double homeHeight = MediaQuery
        .of(context)
        .size
        .height;
    return BlocBuilder<AppBloc, DataStates>(builder: (context, state) {
      AppBloc cubit = AppBloc.get(context);
      return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCustomAppBar(
                  homeHeight: homeHeight,
                  subTitle: " الاستماع للاحاديث الاربعين"),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: cubit.hadithlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) =>
                      buildAya(
                          action: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>PlayOudio(oudio:  cubit.hadithlist[index].audioHadith)
                              ),
                            );
                          },
                          homeHeight: homeHeight,
                          item: cubit.hadithlist[index]),
                ),
              )
            ],
          ));
    });
  }
}
