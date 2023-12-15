import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/strings.dart';
import 'package:effectivelabthree/elements/profile/arrow_link.dart';
import 'package:effectivelabthree/elements/section_text.dart';

class Tariff {
  final String icon;
  final String title;
  final String subtitle;

  Tariff({
    required this.icon,
    required this.title,
    this.subtitle = "",
  });
}

class TariffsAndLimits extends StatelessWidget {
  final List<Tariff> tariffs;
  const TariffsAndLimits({
    super.key,
    required this.tariffs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: SectionText(
            header: Strings.tariffsHeader,
            text: Strings.tariffsBody,
          ),
        ),
        Column(
          children: tariffs.map((tariff) {
            return ArrowLink(
              icon: tariff.icon,
              title: tariff.title,
              subtitle: tariff.subtitle,
            );
          }).toList(),
        ),
      ],
    );
  }
}
