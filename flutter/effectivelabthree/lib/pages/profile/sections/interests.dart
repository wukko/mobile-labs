import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/strings.dart';
import 'package:effectivelabthree/elements/chip.dart';
import 'package:effectivelabthree/elements/section_text.dart';

class InterestChips extends StatelessWidget {
  final List<String> interests;
  const InterestChips({
    super.key,
    required this.interests,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionText(
          header: Strings.interestsHeader,
          text: Strings.interestsBody,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.padding),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: Sizes.padding / 2,
            children: interests.map((interest) {
              return CustomFilterChip(text: interest);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
