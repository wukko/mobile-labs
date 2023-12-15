import 'package:effectivelabthree/elements/profile/subscription_card.dart';
import 'package:effectivelabthree/elements/section_text.dart';
import 'package:flutter/material.dart';

class ConnectedServices extends StatelessWidget {
  const ConnectedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionText(),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.fromLTRB(20, 8, 0, 20),
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
