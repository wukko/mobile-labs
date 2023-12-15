import 'package:flutter/material.dart';
import 'package:effectivelabthree/elements/profile/arrow_link.dart';
import 'package:effectivelabthree/elements/section_text.dart';

class TarrifsAndLimits extends StatelessWidget {
  const TarrifsAndLimits({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SectionText(
            header: "Тарифы и лимиты",
            text: "Для операций в Сбербанк Онлайн",
          ),
        ),
        Column(
          children: [
            ArrowLink(),
            ArrowLink(),
            ArrowLink(),
            ArrowLink(),
          ],
        ),
      ],
    );
  }
}
