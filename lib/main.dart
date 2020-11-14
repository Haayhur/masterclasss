import 'package:flutter/material.dart';
import 'package:masterclasss/Screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass',
      debugShowCheckedModeBanner: false,
       theme:ThemeData(
        primarySwatch: Colors.white,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: HomeScreen(),
    );
  }
}
