import '../widgets/_index.dart';
import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavSlider(
      drawer: NavDrawer(
        title: F.title,
        logo: F.logo,
        navList: F.nav.navList,
        onLogoutPress: F.auth.signOut,
        onNavPress: (String key) {
          F.nav.goTo(key);
          NavSlider.toggle();
        },
      ),
      appBar: LayoutAppBar(
        title: F.title,
        onMenuTap: () => NavSlider.toggle(),
      ),
      body: PageView(
        controller: F.nav.controller,
        children: F.nav.pages,
      ),
    );
  }
}
