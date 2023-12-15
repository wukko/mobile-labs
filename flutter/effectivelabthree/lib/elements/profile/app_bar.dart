import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/strings.dart';
import 'package:effectivelabthree/base/text_styles.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/elements/icon.dart';
import 'package:effectivelabthree/elements/profile/head.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 306,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shadowColor: CustomColor.shadowBlack,
      flexibleSpace:
          const ProfileHead(placeholderAsset: "test", name: "Екатерина"),
      leading: IconButton(
        onPressed: () {},
        icon: const CustomIcon(
          name: "close",
          size: Sizes.mediumIcon,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const CustomIcon(
            name: "logout",
            size: Sizes.mediumIcon,
          ),
        ),
      ],
      bottom: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.black,
        unselectedLabelColor: CustomColor.grey,
        dividerColor: CustomColor.dividerGrey,
        indicatorColor: CustomColor.green,
        splashFactory: InkSparkle.splashFactory,
        overlayColor: MaterialStatePropertyAll(CustomColor.shadowBlack10),
        dividerHeight: Sizes.dividerHeight,
        labelStyle: TextStyles.smallTitle,
        tabs: [
          Tab(
            text: Strings.profile,
          ),
          Tab(
            text: Strings.settings,
          )
        ],
      ),
    );
  }
}
