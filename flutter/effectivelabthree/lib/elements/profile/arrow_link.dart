import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/elements/icon.dart';

class ArrowLink extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const ArrowLink({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: CustomColor.scaffoldBackground,
          child: InkWell(
            onTap: () {},
            child: _InnerLink(
              icon: icon,
              title: title,
              subtitle: subtitle,
            ),
          ),
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

class _InnerLink extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const _InnerLink({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.padding,
        vertical: Sizes.betweenPadding,
      ),
      child: Row(
        children: [
          CustomIcon(name: icon, size: Sizes.bigIcon),
          const SizedBox(width: Sizes.betweenPadding),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyles.smallTitle,
                ),
                if (subtitle.isNotEmpty) ...[
                  const SizedBox(height: Sizes.smallLinePadding),
                  Text(
                    subtitle,
                    style: TextStyles.bodyGrey,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: Sizes.padding),
          const CustomIcon(name: "arrow", size: Sizes.mediumIcon)
        ],
      ),
    );
  }
}
