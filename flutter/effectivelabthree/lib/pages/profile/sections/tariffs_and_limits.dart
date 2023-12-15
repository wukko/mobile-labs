import 'package:effectivelabthree/elements/profile/arrow_link.dart';
import 'package:effectivelabthree/elements/section_text.dart';
import 'package:flutter/material.dart';

class TarrifsAndLimits extends StatelessWidget {
  const TarrifsAndLimits({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionText(),
        Column(children: [ArrowLink(), ArrowLink(), ArrowLink(), ArrowLink()])
      ],
    );
  }
}
