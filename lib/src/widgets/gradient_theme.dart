import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';

ThemeData kThemeSecondary = ThemeData.dark();

class GradientTheme extends StatelessWidget {
  final Widget child;

  GradientTheme({this.child});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: kThemeSecondary,
      child: DefaultTextStyle(
        style: TextStyle(color: F.palette.secondaryThemeForeground[0]),
        child: child,
      ),
    );
  }
}
