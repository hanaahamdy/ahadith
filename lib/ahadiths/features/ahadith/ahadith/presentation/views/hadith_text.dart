import 'package:ahadith/ahadiths/features/ahadith/ahadith/presentation/widgets/Hadith_detail_page_content.dart';
import 'package:flutter/material.dart';
class HadithText extends StatelessWidget {
final String hadithText;
int current_hero=1;
   HadithText({required this.hadithText});
  @override
  Widget build(BuildContext context) {
    return HadithDetailPageContent(text: hadithText,hero: "third");

  }
}
