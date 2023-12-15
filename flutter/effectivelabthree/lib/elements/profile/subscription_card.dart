import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x114F4F6C),
                  blurRadius: 14,
                  offset: Offset(0, 8),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: InnerCard()))));
  }
}

class InnerCard extends StatelessWidget {
  const InnerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 216,
        height: 130,
        child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ClipRRect(
                        child: const Image(
                            image: AssetImage(
                                "assets/icons/36/multicolor/sberprime.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 12),
                    const Text(
                      "СберПрайм",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.40,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 22),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Платёж 9 июля",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "199 ₽ в месяц",
                      style: TextStyle(
                        color: Color(0x7f000000),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41,
                      ),
                    )
                  ],
                ),
              ],
            )));
  }
}
