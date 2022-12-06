import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_bloc.dart';
import 'package:ahadith/ahadiths/features/ahadith/ahadith/data/cubit/app_states.dart';
import 'package:ahadith/core/utils/app_colors.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Uodio extends StatefulWidget {
  final String oudio;

  Uodio({super.key, required this.oudio});

  @override
  State<Uodio> createState() => _UodioState(oudio);
}

class _UodioState extends State<Uodio> {
  final String oudio;
  late AudioPlayer audio_player;
  late AudioCache cache;

  _UodioState(this.oudio);
  Duration current_oudio_position = Duration();
  Duration oudio_length = Duration();
  bool isPlay = false;

  @override
  void initState() {
    audio_player = AudioPlayer();
    cache = AudioCache(fixedPlayer: audio_player);
    setup();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(current_oudio_position.inSeconds.toString()),
                  Expanded(
                    child: Slider(activeColor: AppColors.yellow,inactiveColor: AppColors.primaryColor,
                        value: current_oudio_position.inSeconds.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            seek(value.toInt());
                          });
                        },
                        min: 0,
                        max: oudio_length.inSeconds.toDouble()),
                  ),
                  Text("${oudio_length.inSeconds}")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      if (current_oudio_position.inSeconds == 0 ||
                          current_oudio_position.inSeconds < 10) {
                        seek(0);
                      } else if (current_oudio_position.inSeconds > 10) {
                        seek(current_oudio_position.inSeconds - 10);
                      }
                    },
                    icon: Icon(Icons.skip_previous),
                  ),
                  IconButton(
                    onPressed: () {
                      if (isPlay) {
                        setState(() {
                          isPlay = false;
                        });
                        stop();

                      } else {
                        setState(() {
                          isPlay = true;
                        });
                        cache.play("audio/$oudio");

                      }
//                  cubit.play("audio/${widget.oudio}");
                    },
                    icon: isPlay ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                  ),
                  IconButton(onPressed: () {
                    if(current_oudio_position.inSeconds<oudio_length.inSeconds+ 10){
                      setState(() {
                        seek(current_oudio_position.inSeconds+10);

                      });
                    }
                    else{
                      seek(oudio_length.inSeconds);
                      setState(() {
                        isPlay=false;
                        audio_player.stop();
                      });
                    }
                  }, icon: Icon(Icons.skip_next))
                ],
              )
            ],
          ),
        ));
  }

  void stop() {
    audio_player.pause();
  }

  void seek(int sec) {
    audio_player.seek(Duration(seconds: sec));
  }

  setup() {
    audio_player.onAudioPositionChanged.listen((event) {
      setState(() {
        current_oudio_position = event;
      });
    });
    audio_player.onDurationChanged.listen((event) {
    setState(() {
      oudio_length = event;
    });
    });
  }
}
