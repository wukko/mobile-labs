import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/base/sizes.dart';
import 'package:effectivelabthree/base/text_styles.dart';

class ProfileHead extends StatelessWidget {
  final String placeholderAsset;
  final String name;

  const ProfileHead({
    super.key,
    required this.placeholderAsset,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      expandedTitleScale: 1,
      titlePadding: const EdgeInsets.only(bottom: 70),
      collapseMode: CollapseMode.pin,
      background: Center(
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: CustomColor.shadowProfile,
                blurRadius: 24,
                offset: Offset(0, 16),
                spreadRadius: -16,
              ),
            ],
          ),
          child: SizedBox(
            height: 110,
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(BorderRadiuses.profilePic),
              child: Image(
                image: AssetImage('assets/placeholders/$placeholderAsset.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        name,
        style: TextStyles.bigTitle,
      ),
    );
  }
}
