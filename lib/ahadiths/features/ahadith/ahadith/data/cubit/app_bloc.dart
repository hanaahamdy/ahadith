import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/audio.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_states.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/db/db.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/hadith_explanation.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/hadith_text.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/translate_Narrator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/hadith_moel.dart';

class AppBloc extends Cubit<DataStates> {


  AppBloc() : super(DataInitState());


  static AppBloc get(BuildContext context) {
    return BlocProvider.of(context);
  }


  List<Tab> tabs = [
    Tab(
      icon: Icon(Icons.volume_up),
      child: Text("الصوت"),
    ),
    Tab(
      icon: Icon(Icons.account_box_outlined),
      child: Text("تفسير الراوي"),
    ),
    Tab(
      icon: Icon(Icons.library_books_sharp),
      child: Text("تفسير الحديث"),
    ),
    Tab(
      icon: Icon(
        Icons.book,
      ),
      child: Text("الحديث"),
    ),
  ];

  List<Widget> children(Hadith hadithModel) {
    return [
      Uodio(oudio: hadithModel.audioHadith),
      NarratorTranslationScreen(
        NarratorTranslation: hadithModel.translateNarrator,
      ),
      HadithExplanation(
        explanationText: hadithModel.explanationHadith,
      ),
      HadithText(
        hadithText: hadithModel.textHadith,
      ),
    ];
  }

  int index = 0;

  void changeBottomNav(int currentIndex) {
    index = currentIndex;
    emit(BottomNavState());
  }

  List<Hadith> hadithlist = [];

  void getData() {
    emit(GetDataLoadingState());
    Mydata.getAlldata().then((value) {
      value.forEach((element) {
        hadithlist.add(element);
        emit(GetDataSuccessState());
      });
      print(hadithlist[0].textHadith);
      print(hadithlist.length);

    }).catchError((onError) {
      emit(GetDataErrorState());
      print(onError.toString());
    });
  }

  //***********************************oudio****************************

  bool isPlay = false;
  IconData? playing;
 AudioPlayer player=AudioPlayer();

  AudioCache? cache;
  void stop() async {
    await player.pause();
    emit(AudioStopState());
  }
//
//  Duration current_oudio_position = Duration();
//  Duration oudio_length = Duration();

  void play(String oudio_path) async {
    isPlay = !isPlay;
    cache?.load(oudio_path);
    cache = AudioCache(fixedPlayer: player);
    print(isPlay);
    if (isPlay) {
      await cache?.play(oudio_path);
      playing = Icons.pause;
//      cur_pos();
//      lenght_oud();

      emit(AudioPlayState());
    } else {
      playing = Icons.play_arrow;
      stop();
    }
  }

//  void lenght_oud() {
//    player.onDurationChanged.listen((event) {
//      oudio_length = event;
//    });
//  }

//  void cur_pos() {
//    player.onAudioPositionChanged.listen((event) {
//      current_oudio_position = event;
//    });
//  }

  //*************************************oudio position******************

//  void current_posiion() {}
//
//  void oudio_lenght() {
//    player.onDurationChanged.listen((event) {
//      oudio_length = event;
//      emit(AudioChangeState());
//    });
//  }

  seekTo(int sec) {
    emit(AudioPlayState());
    player.seek(Duration(seconds: sec)).then((value) {
      emit(SeekState());
    });
  }
}
