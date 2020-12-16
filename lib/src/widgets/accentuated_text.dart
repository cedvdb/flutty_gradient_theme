import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';

// text where the first letter is the accent color
class AccentuatedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color accentColor;

  AccentuatedText({
    @required this.text,
    this.style = const TextStyle(),
    accentColor,
  }) : accentColor = accentColor ?? F.palette.accent;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: this.text[0],
            style: style.copyWith(color: accentColor),
          ),
          TextSpan(
            text: this.text.substring(1),
            style: style,
          ),
        ],
      ),
    );
  }
}
