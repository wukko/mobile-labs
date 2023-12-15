import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/elements/icon.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

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
            child: InnerCard(),
          ),
        ),
      ),
    );
  }
}

class InnerCard extends StatelessWidget {
  const InnerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      child: const Padding(
        padding: EdgeInsets.all(Sizes.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomIcon(name: "sberprime", size: Sizes.bigIcon),
                SizedBox(width: Sizes.betweenPadding),
                Text(
                  "СберПрайм",
                  style: TextStyles.smallTitle,
                ),
              ],
            ),
            SizedBox(height: Sizes.bigPadding + Sizes.multiLinePadding),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Платёж 9 июля",
                  style: TextStyles.bodyBlack,
                ),
                SizedBox(height: Sizes.multiLinePadding),
                Text(
                  "199 ₽ в месяц",
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
