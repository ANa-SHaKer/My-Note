import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return DynamicTheme(
        defaultBrightness: Brightness.dark, // Brightness.dark,
        data: (brightness) => ThemeData(

      brightness: brightness,
    ),
    themedWidgetBuilder: (context, theme) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:theme,
      home: Homepage(),
    );});
  }
}
