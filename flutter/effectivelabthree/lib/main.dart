import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/elements/profile/app_bar.dart';
import 'package:effectivelabthree/pages/profile/profile.dart';
import 'package:effectivelabthree/pages/profile/settings.dart';

void main() => runApp(const EffectiveLabThree());

class EffectiveLabThree extends StatelessWidget {
  const EffectiveLabThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScaffoldExample(),
      theme: ThemeData(
        fontFamily: defaultFontFamily,
        visualDensity: VisualDensity.comfortable,
        primarySwatch: Colors.green,
        primaryColor: CustomColor.green,
        primaryColorLight: CustomColor.green,
        hintColor: CustomColor.green,
        canvasColor: Colors.white,
      ),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CustomColor.scaffoldBackground,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [const ProfileAppBar()];
          },
          body: const TabBarView(
            children: [ProfilePage(), SettingsPage()],
          ),
        ),
      ),
    );
  }
}
