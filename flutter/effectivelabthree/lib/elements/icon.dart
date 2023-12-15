import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  final String name;
  final int size;

  const CustomIcon({
    super.key,
    required this.name,
    required this.size,
  });

  @override
  CustomIconState createState() => CustomIconState();
}

class CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.toDouble(),
      width: widget.size.toDouble(),
      child: ClipRRect(
        child: Image(
          image: AssetImage("assets/icons/${widget.size}/${widget.name}.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
