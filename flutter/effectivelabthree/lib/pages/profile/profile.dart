import 'package:effectivelabthree/pages/profile/sections/connected_services.dart';
import 'package:effectivelabthree/pages/profile/sections/tariffs_and_limits.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 16),
      children: const [
        ConnectedServices(),
        TarrifsAndLimits(),
      ],
    );
  }
}
