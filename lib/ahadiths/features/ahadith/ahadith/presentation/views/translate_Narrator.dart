import 'package:flutter/material.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:ahadith/core/utils/app_colors.dart';

import '../widgets/Hadith_detail_page_content.dart';

class NarratorTranslationScreen extends StatelessWidget {
  final String NarratorTranslation;

  const NarratorTranslationScreen({required this.NarratorTranslation});

  @override
  Widget build(BuildContext context) {
    return HadithDetailPageContent(text: NarratorTranslation,hero: "first");
  }


}
