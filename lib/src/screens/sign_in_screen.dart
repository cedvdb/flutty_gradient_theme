import '../widgets/_index.dart';
import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

final getDefaultSignInBtns = () => [
      OutlineIconButton(
        text: F.tr('Sign in with Google'),
        icon: FontAwesomeIcons.google,
        onPress: () => F.auth.signIn(),
        accentColor: Colors.amber,
      ),
    ];

class SignInScreen extends StatelessWidget {
  final List<Widget> signInButtons;

  SignInScreen({
    this.signInButtons,
  });

  @override
  Widget build(BuildContext context) {
    final btns = signInButtons ?? getDefaultSignInBtns();
    return GradientContainer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (F.logo != null) ...[
              Container(
                height: 100,
                width: 100,
                child: F.logo,
              ),
              SizedBox(height: F.spacing.l),
            ],
            if (F.title != null) ...[
              AccentuatedText(
                text: F.title,
                style: GoogleFonts.indieFlower(fontSize: 60),
              ),
              SizedBox(height: F.spacing.l),
            ],
            for (final btn in btns) ...[
              btn,
              SizedBox(height: F.spacing.l),
            ]
          ],
        ),
      ),
    );
  }
}
