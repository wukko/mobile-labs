import 'package:effectivelabthree/elements/profile/app_bar.dart';
import 'package:flutter/material.dart';

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
        fontFamily: 'SF Pro Text',
        visualDensity: VisualDensity.comfortable,
        primarySwatch: Colors.green,
        primaryColor: Color(0xff068441),
        primaryColorLight: Color(0xff068441),
        hintColor: Color(0xff068441),
        canvasColor: Color(0xffffffff),
        scaffoldBackgroundColor: Color(0xffffffff),
        cardColor: Color(0xffffffff),
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
        backgroundColor: Color(0xffFAFAFA),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[const ProfileAppBar()];
          },
          body: const TabBarView(
            children: [ProfilePage(), SettingsPage()],
          ),
        ),
      ),
    );
  }
}
