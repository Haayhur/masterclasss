import 'package:flutter/material.dart';

import 'Screens/master.dart';
import 'Screens/profile_screen.dart';
import 'widgets/choice_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        accentColor: Colors.black,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Choicescreen(),
    ); //
  }
}
