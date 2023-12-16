import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/strings.dart';
import 'package:effectivelabthree/elements/profile/subscription_card.dart';
import 'package:effectivelabthree/elements/section_text.dart';

class Subscription {
  final String icon;
  final String title;
  final String renew;
  final String price;

  Subscription({
    required this.icon,
    required this.title,
    required this.renew,
    required this.price,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      icon: json['icon'],
      title: json['title'],
      renew: json['renew'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'icon': icon,
      'title': title,
      'renew': renew,
      'price': price,
    };
  }
}

class ConnectedServices extends StatelessWidget {
  final List<Subscription> subscriptions;
  const ConnectedServices({
    super.key,
    required this.subscriptions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionText(
          header: Strings.connectedHeader,
          text: Strings.connectedBody,
        ),
        SizedBox(
          height: Sizes.cardHeight + Sizes.bigPadding / 2 + Sizes.padding,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(
              Sizes.bigPadding,
              Sizes.padding / 2,
              Sizes.bigPadding - (Sizes.padding / 2),
              Sizes.bigPadding,
            ),
            children: subscriptions.map((subscription) {
              return SubscriptionCard(
                icon: subscription.icon,
                title: subscription.title,
                renew: subscription.renew,
                price: subscription.price,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
