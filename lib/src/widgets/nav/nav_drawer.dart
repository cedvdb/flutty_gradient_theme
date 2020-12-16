import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';
import 'package:google_fonts/google_fonts.dart';
import '../accentuated_text.dart';
import 'nav_list.dart';
import 'nav_item.dart';

/// drawer displayed when clicking the menu button
class NavDrawer extends StatelessWidget {
  final Widget logo;
  final String title;
  final List<NavInfo> navList;
  final Function onLogoutPress;
  final NavFunction onNavPress;

  NavDrawer({
    this.logo,
    this.title,
    this.navList,
    this.onLogoutPress,
    this.onNavPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopLogo(title: title, logo: logo),
        NavList(
          displayText: true,
          navList: this.navList,
          onLogoutPress: this.onLogoutPress,
          onNavPress: this.onNavPress,
        ),
      ],
    );
  }
}

class TopLogo extends StatelessWidget {
  final Widget logo;
  final String title;

  TopLogo({
    this.logo,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: F.spacing.m + MediaQuery.of(context).padding.top,
        bottom: F.spacing.m,
      ),
      child: NavItem(
        icon: Center(
          child: Container(
            height: 30,
            width: 30,
            child: F.logo,
          ),
        ),
        text: AccentuatedText(
          text: title,
          style: GoogleFonts.indieFlower(
            textStyle: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
