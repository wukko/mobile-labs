import 'package:effectivelabthree/elements/profile/head.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 306.0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shadowColor: Color(0x08000014),
      flexibleSpace: ProfileHead(),
      leading: AppBar(actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.close), color: Color(0xff068441))
      ]),
      bottom: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Color(0xff000000),
        unselectedLabelColor: Color(0x7f000000),
        dividerColor: Color(0x0c000000),
        indicatorColor: Color(0xff068441),
        splashFactory: InkSparkle.splashFactory,
        overlayColor: MaterialStatePropertyAll(Color.fromARGB(10, 0, 0, 0)),
        dividerHeight: 2,
        labelStyle: TextStyle(
          fontSize: 16,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          letterSpacing: -0.40,
        ),
        tabs: [
          Tab(
            text: "Профиль",
          ),
          Tab(
            text: "Настройки",
          )
        ],
      ),
    );
  }
}
