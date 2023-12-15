import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/elements/icon.dart';

class ArrowLink extends StatelessWidget {
  const ArrowLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: CustomColor.scaffoldBackground,
          child: InkWell(onTap: () {}, child: const InnerLink()),
        ),
        const Divider(
          height: 0,
          indent: Sizes.bigIcon + Sizes.padding + Sizes.betweenPadding,
          color: CustomColor.dividerGrey,
        ),
      ],
    );
  }
}

class InnerLink extends StatelessWidget {
  const InnerLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.padding,
        vertical: Sizes.betweenPadding,
      ),
      child: Row(
        children: [
          CustomIcon(name: "speedometer", size: Sizes.bigIcon),
          SizedBox(width: Sizes.betweenPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Перенос строки",
                style: TextStyles.smallTitle,
              ),
              SizedBox(width: 2),
              Text(
                "На платежи и переводы",
                style: TextStyles.bodyGrey,
              ),
            ],
          ),
          Spacer(),
          CustomIcon(name: "arrow", size: Sizes.mediumIcon)
        ],
      ),
    );
  }
}
