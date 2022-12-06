import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/audio.dart';
import 'package:flutter/material.dart';
class PlayOudio extends StatelessWidget {
  final String oudio;

  const PlayOudio({super.key, required this.oudio});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Uodio(oudio:oudio ,),);
  }
}
