import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/elements/profile/app_bar.dart';
import 'package:effectivelabthree/pages/profile/profile.dart';
import 'package:effectivelabthree/pages/profile/settings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CustomColor.scaffoldBackground,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const ProfileAppBar(),
            ];
          },
          body: const TabBarView(
            children: [
              ProfilePage(),
              SettingsPage(),
            ],
          ),
        ),
      ),
    );
  }
}