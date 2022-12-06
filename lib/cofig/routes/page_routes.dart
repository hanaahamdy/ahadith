
import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/views/ahadith_list.dart';
import 'package:ahadith/ahadiths/features/save_screen/presentation/views/saved_svcreen.dart';
import 'package:flutter/material.dart';

import '../../ahadiths/features/home_screen/presentation/home_screen.dart';
import '../../ahadiths/features/play/presentation/views/playt_screen.dart';

Map<String, WidgetBuilder> PageRoutes={
"Home Screen":(context)=>HomeScreen(),
  "Play Screen":(context)=>PlayScreen(),
  "Saved Screen":(context)=>SavedScreen(),
  "Ahadith Screen":(context)=>AhadithScreen()
};