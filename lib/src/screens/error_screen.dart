import '../widgets/_index.dart';
import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final getDefaultIcon = () => Icon(
      FontAwesomeIcons.exclamationCircle,
      size: 100,
      color: F.palette.secondaryThemeForeground[1],
    );

final getDefaultMessage = () => Column(
      children: [
        Text(
          F.tr('Something wrong happened'),
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          F.tr('Please try again'),
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );

class ErrorScreen extends StatelessWidget {
  final Widget icon;
  final Widget message;

  ErrorScreen({this.icon, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? getDefaultIcon(),
            SizedBox(
              height: F.spacing.l,
            ),
            message ?? getDefaultMessage(),
          ],
        ),
      ),
    );
  }
}
