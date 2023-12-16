import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/theme.dart';
import 'package:effectivelabthree/screens/profile.dart';

void main() => runApp(const EffectiveLabThree());

class EffectiveLabThree extends StatelessWidget {
  const EffectiveLabThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfileScreen(),
      theme: customTheme,
    );
  }
}
