import 'package:flutter/material.dart';

import 'Screens/controller.dart';

import 'Screens/profile_screen.dart';
import 'Screens/search_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => Controller(),
        '/home': (context) => Choicescreen(),
        '/search': (context) => SearchScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
