import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/elements/profile/subscription_card.dart';
import 'package:effectivelabthree/elements/section_text.dart';

class ConnectedServices extends StatelessWidget {
  const ConnectedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionText(
          header: "У вас подключено",
          text: "Подписки, автоплатежи и сервисы на которые вы подписались",
        ),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(
              Sizes.bigPadding,
              Sizes.padding / 2,
              Sizes.bigPadding - (Sizes.padding / 2),
              Sizes.bigPadding,
            ),
            children: const [
              SubscriptionCard(),
              SubscriptionCard(),
              SubscriptionCard()
            ],
          ),
        ),
      ],
    );
  }
}
