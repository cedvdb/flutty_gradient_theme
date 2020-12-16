import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accentuated_text.dart';
import 'nav/nav_slider.dart';

class LayoutAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function onMenuTap;

  LayoutAppBar({
    this.title,
    this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: F.palette.primary,
      leading: IconButton(
        onPressed: onMenuTap,
        icon: Icon(
          FontAwesomeIcons.bars,
        ),
      ),
      title: Container(
        height: 40,
        child: AccentuatedText(
          text: title,
          style: GoogleFonts.indieFlower(
            textStyle: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
