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
      children: const [
        ConnectedServices(),
        SizedBox(height: Sizes.bigPadding),
        TarrifsAndLimits(),
        SizedBox(height: Sizes.bigPadding),
        InterestChips(),
        SizedBox(height: Sizes.bigPadding),
      ],
    );
  }
}
