import 'package:flutter/material.dart';

class ArrowLink extends StatelessWidget {
  const ArrowLink({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            SizedBox(
              height: 36,
              width: 36,
              child: ClipRRect(
                child: Image(
                    image: AssetImage("assets/icons/36/stroke/speedometer.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 12),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Перенос строки",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.40,
                ),
              ),
              SizedBox(width: 2),
              Text(
                "На платежи и переводы",
                style: TextStyle(
                  color: Color(0x7f000000),
                  fontSize: 14,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.41,
                ),
              ),
            ]),
            Spacer(),
            SizedBox(
              height: 24,
              width: 24,
              child: ClipRRect(
                child: Image(
                    image: AssetImage("assets/icons/24/disclosure.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ));
  }
}
