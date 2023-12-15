import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      expandedTitleScale: 1,
      titlePadding: const EdgeInsets.only(bottom: 70),
      collapseMode: CollapseMode.pin,
      background: Center(
        child: SizedBox(
          height: 110,
          width: 110,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(BorderRadiuses.profilePic),
            child: const Image(
              image: AssetImage('assets/placeholders/user.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: const Text(
        "Екатерина",
        style: TextStyles.bigTitle,
      ),
    );
  }
}
