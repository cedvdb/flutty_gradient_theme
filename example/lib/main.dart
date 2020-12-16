import 'package:flutter/material.dart';
import 'package:flutty/flutty.dart' as F;
import 'package:flutty_theme_gradient/flutty_theme_gradient.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: F.Flutty(
        preload: Future.delayed(Duration(milliseconds: 500)),
        logo: Image.asset('assets/logo_medicare.png', fit: BoxFit.cover),
        title: 'Medicare',
        theme: gradientTheme,
        navList: [
          F.NavInfo(
            icon: Icon(FontAwesomeIcons.userMd),
            text: Text(
              'Doctors',
              style: TextStyle(fontSize: 16),
            ),
            target: AdnScreen(),
            key: 'doctors',
          ),
          F.NavInfo(
            icon: Icon(FontAwesomeIcons.bacteria),
            text: Text(
              'Bacteria',
              style: TextStyle(fontSize: 16),
            ),
            target: BacteriaScreen(),
            key: 'bacteria',
          ),
          F.NavInfo(
            icon: Icon(FontAwesomeIcons.medkit),
            text: Text(
              'Medkit',
              style: TextStyle(fontSize: 16),
            ),
            target: MedKitScreen(),
            key: 'medkit',
          )
        ],
      ),
    );
  }
}

class AdnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Doctors page'),
    );
  }
}

class BacteriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Bacteria page'),
    );
  }
}

class MedKitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Medkit page'),
    );
  }
}
