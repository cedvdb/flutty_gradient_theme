import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nav_item.dart';

typedef NavFunction(String key);

class NavList extends StatelessWidget {
  final bool displayText;
  final List<NavInfo> navList;
  final Function onLogoutPress;
  final NavFunction onNavPress;

  NavList({
    this.displayText = true,
    this.navList,
    this.onLogoutPress,
    this.onNavPress,
  });

  @override
  Widget build(BuildContext context) {
    return SecondaryTheme(
      child: Expanded(
        child: Column(
          children: [
            for (int i = 0; i < navList.length; i++)
              NavItem(
                icon: navList[i].icon,
                text: displayText ? navList[i].text : null,
                onTap: () => onNavPress(navList[i].key),
              ),
            Spacer(),
            NavItem(
              icon: Icon(FontAwesomeIcons.signOutAlt),
              text: Text(
                F.tr('Logout'),
                style: TextStyle(fontSize: 16),
              ),
              onTap: () => F.auth.signOut(),
            ),
          ],
        ),
      ),
    );
  }
}
