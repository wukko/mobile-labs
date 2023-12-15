import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String name;
  final int size;

  const CustomIcon({
    super.key,
    required this.name,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.toDouble(),
      width: size.toDouble(),
      child: ClipRRect(
        child: Image(
          image: AssetImage("assets/icons/$size/$name.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
