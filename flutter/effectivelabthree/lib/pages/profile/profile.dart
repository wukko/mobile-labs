import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/pages/profile/sections/connected_services.dart';
import 'package:effectivelabthree/pages/profile/sections/interests.dart';
import 'package:effectivelabthree/pages/profile/sections/tariffs_and_limits.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  List<Subscription> subscriptions = [];
  List<Tariff> tariffs = [];
  List<String> interests = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    String jsonString =
        await rootBundle.loadString('assets/placeholders/fakedata.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);

    setState(() {
      subscriptions = (jsonData['subscriptions'] as List)
          .map((data) => Subscription.fromJson(data))
          .toList();
      tariffs = (jsonData['tariffs'] as List)
          .map((data) => Tariff.fromJson(data))
          .toList();
      interests = List<String>.from(jsonData['interests']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: Sizes.padding),
      children: [
        ConnectedServices(subscriptions: subscriptions),
        const SizedBox(height: Sizes.multiLinePadding),
        TariffsAndLimits(tariffs: tariffs),
        const SizedBox(height: Sizes.bigPadding),
        InterestChips(interests: interests),
        const SizedBox(height: Sizes.bigPadding),
      ],
    );
  }
}
