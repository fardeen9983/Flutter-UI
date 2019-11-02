import 'package:flutter/material.dart';
import 'package:qr_hero_animation/theme.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Animation',
      theme: ThemeData(primaryColor: primaryColor),
      debugShowCheckedModeBanner: false,
    );
  }
}
