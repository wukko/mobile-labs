import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  const SectionText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14),
            Text(
              "У вас подлючено",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.70,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Подписки, автоплатежи и сервисы на которые вы подписались",
              style: TextStyle(
                color: Color(0x7f000000),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.42,
              ),
            ),
            SizedBox(height: 12),
          ],
        ));
  }
}
