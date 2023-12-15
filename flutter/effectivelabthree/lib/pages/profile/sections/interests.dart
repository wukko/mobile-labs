import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/elements/chip.dart';
import 'package:effectivelabthree/elements/section_text.dart';

class InterestChips extends StatelessWidget {
  const InterestChips({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionText(
          header: "Интересы",
          text:
              "Мы подбираем истории и предложения по темам, которые вам нравятся",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.padding),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: Sizes.padding / 2,
            children: [
              CustomFilterChip(text: "Еда"),
              CustomFilterChip(text: "Саморазвитие"),
              CustomFilterChip(text: "Технологии"),
              CustomFilterChip(text: "Дом"),
              CustomFilterChip(text: "Досуг"),
              CustomFilterChip(text: "Забота о себе"),
              CustomFilterChip(text: "Наука"),
            ],
          ),
        ),
      ],
    );
  }
}
