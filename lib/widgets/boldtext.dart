import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BoldText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  BoldText({
    Key? key,
    this.size = 30.0,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
