import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/widgets/Hadith_detail_page_content.dart';
import 'package:flutter/material.dart';
import 'package:ahadith/core/utils/app_text.dart';
import 'package:ahadith/core/utils/app_colors.dart';
class HadithExplanation extends StatelessWidget {
  final String explanationText;

  const HadithExplanation({required this.explanationText});
  @override
  Widget build(BuildContext context) {
     return HadithDetailPageContent(text: explanationText,hero: "second");
  }
}
