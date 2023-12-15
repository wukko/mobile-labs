import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/elements/icon.dart';

class SubscriptionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String renew;
  final String price;

  const SubscriptionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.renew,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Sizes.padding / 2),
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiuses.card),
          ),
          shadows: const [
            BoxShadow(
              color: CustomColor.shadowBlue,
              blurRadius: 14,
              offset: Offset(0, 8),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: CustomColor.shadowBlack,
              blurRadius: 10,
              offset: Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiuses.card),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(BorderRadiuses.card),
            onTap: () {},
            child: _InnerCard(
              icon: icon,
              title: title,
              renew: renew,
              price: price,
            ),
          ),
        ),
      ),
    );
  }
}

class _InnerCard extends StatelessWidget {
  final String icon;
  final String title;
  final String renew;
  final String price;

  const _InnerCard({
    required this.icon,
    required this.title,
    required this.renew,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.cardWidth,
      height: Sizes.cardHeight,
      child: Padding(
        padding: const EdgeInsets.all(Sizes.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomIcon(name: icon, size: Sizes.bigIcon),
                const SizedBox(width: Sizes.betweenPadding),
                Text(
                  title,
                  style: TextStyles.smallTitle,
                ),
              ],
            ),
            const SizedBox(height: Sizes.bigPadding + Sizes.smallLinePadding),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  renew,
                  style: TextStyles.bodyBlack,
                ),
                const SizedBox(height: Sizes.smallLinePadding),
                Text(
                  price,
                  style: TextStyles.bodyGrey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
