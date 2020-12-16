import '../widgets/_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutty/flutty.dart';

final defaultSpinner = SpinKitDoubleBounce(
  color: F.palette.secondaryThemeForeground[1],
  size: 100,
);

class LoadingScreen extends StatelessWidget {
  final Widget spinner;
  final Widget logo;

  LoadingScreen({
    Widget spinner,
    this.logo,
  }) : spinner = spinner ?? defaultSpinner;

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          spinner,
          Spacer(),
          if (logo != null) logo,
          SizedBox(
            height: F.spacing.l,
          ),
        ],
      ),
    );
  }
}
