import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/pages/profile/sections/connected_services.dart';
import 'package:effectivelabthree/pages/profile/sections/interests.dart';
import 'package:effectivelabthree/pages/profile/sections/tariffs_and_limits.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: Sizes.padding),
      children: [
        ConnectedServices(subscriptions: [
          Subscription(
            icon: "sberprime",
            title: "СберПрайм",
            renew: "Платёж 9 июля",
            price: "199 ₽ в месяц",
          ),
          Subscription(
            icon: "percent_fill",
            title: "Переводы",
            renew: "Автопродление 21 августа",
            price: "199 ₽ в месяц",
          ),
          Subscription(
            icon: "sberprime",
            title: "СберПрайм+",
            renew: "Платёж 13 июля",
            price: "499 ₽ в месяц",
          ),
        ]),
        const SizedBox(height: Sizes.multiLinePadding),
        TariffsAndLimits(tariffs: [
          Tariff(
            icon: "speedometer",
            title: "Изменить суточный лимит",
            subtitle: "На платежи и переводы",
          ),
          Tariff(
            icon: "percent",
            title: "Переводы без комиссии",
            subtitle: "Показать остаток в этом месяце",
          ),
          Tariff(
            icon: "transfers",
            title: "Информация о тарифах и лимитах и много текста",
          ),
        ]),
        const SizedBox(height: Sizes.bigPadding),
        const InterestChips(interests: [
          "Еда",
          "Саморазвитие",
          "Технологии",
          "Дом",
          "Досуг",
          "Забота о себе",
          "Наука",
        ]),
        const SizedBox(height: Sizes.bigPadding),
      ],
    );
  }
}
