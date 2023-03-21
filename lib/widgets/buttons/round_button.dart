import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  double width;
  double height;
  String text;
  Color backgroundColor;
  Color? textColor;

  void Function() onPressed;

  RoundButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.text,
      required this.backgroundColor,
      this.textColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: backgroundColor,
              foregroundColor: textColor ?? Colors.white),
          onPressed: onPressed,
          child: Text(text)),
    );
  }
}
