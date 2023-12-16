import 'package:flutter/material.dart';
import 'package:effectivelabthree/base/text_styles.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Настройки", style: TextStyles.bodyGrey));
  }
}
