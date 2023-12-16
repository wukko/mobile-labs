import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';

class CustomFilterChip extends StatefulWidget {
  final String text;

  const CustomFilterChip({
    super.key,
    required this.text,
  });

  @override
  CustomFilterChipState createState() => CustomFilterChipState();
}

class CustomFilterChipState extends State<CustomFilterChip> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        widget.text,
        style: TextStyles.bodyBlack,
      ),
      backgroundColor: CustomColor.shadowBlack,
      shape: const StadiumBorder(
        side: BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
      ),
      clipBehavior: Clip.none,
      onSelected: (bool value) {},
    );
  }
}
