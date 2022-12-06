import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_bloc.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_states.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/model/hadith_moel.dart';
import 'package:ahadith/cofig/routes/image_routes.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home_page_body_decoration.dart';
import '../widgets/build_floating_action_button.dart';
import '../widgets/build_tab_bar.dart';
import '../widgets/build_tab_bar_view.dart';
import 'audio.dart';
import 'hadith_explanation.dart';
import 'hadith_text.dart';
import 'translate_Narrator.dart';

class HomePage extends StatelessWidget {
  final Hadith hadithModel;

  const HomePage({super.key, required this.hadithModel});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<AppBloc, DataStates>(
      builder: (context, state) {
        AppBloc cubit = AppBloc.get(context);
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.grey[300],
            body: Container(
                decoration: bodyDecoration(),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * .1,
                    ),
                    buildTabBar(cubit),
                    SizedBox(
                      height: screenHeight * .05,
                    ),
                    buildTabBarView(cubit: cubit, hadithModel: hadithModel)
                  ],
                )),
          ),
        );
      },
    );
  }
}
