// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:travelbuddy/widgets/textuse.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;
  AppButton({
    Key? key,
    required this.color,
    this.text = "Hi",
    this.icon,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
    this.isIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: AppText(color: color, text: text!),
            )
          : Icon(
              icon,
              color: color,
            ),
    );
  }
}
