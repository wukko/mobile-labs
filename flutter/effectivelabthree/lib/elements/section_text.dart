import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';

class SectionText extends StatefulWidget {
  final String header;
  final String text;

  const SectionText({
    super.key,
    required this.header,
    required this.text,
  });

  @override
  SectionTextState createState() => SectionTextState();
}

class SectionTextState extends State<SectionText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Sizes.padding),
            Text(
              widget.header,
              style: TextStyles.mediumTitle,
            ),
            const SizedBox(height: Sizes.multiLinePadding),
            Text(
              widget.text,
              style: TextStyles.bodyGrey,
            ),
            const SizedBox(height: Sizes.betweenPadding),
          ],
        ));
  }
}
