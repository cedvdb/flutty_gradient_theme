import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';
import 'package:flutty_theme_gradient/src/widgets/gradient_theme.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final List<Color> colors;
  final List<Alignment> align;
  final double width;
  final double height;

  GradientContainer({
    this.child,
    this.colors,
    this.align = const [Alignment.topLeft, Alignment.bottomRight],
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GradientTheme(
      child: Container(
        child: child,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors ?? F.palette.secondaryThemeBackground,
          ),
        ),
      ),
    );
  }
}
