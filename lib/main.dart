import 'package:flutter/material.dart';
import 'Screens/choice_screen.dart';
import 'Screens/controller.dart';
import 'Screens/login.dart';
import 'Screens/profile_screen.dart';
import 'Screens/search_screen.dart';
import 'Screens/splash.dart';

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
      initialRoute: '/splash',
      routes: {
        '/': (context) => Controller(),
        '/home': (context) => Homescreen(),
        '/search': (context) => SearchScreen(),
        '/profile': (context) => ProfileScreen(),
        '/splash': (context) => SplashPage(),
        '/login': (context) => SigninScreen(),
      },
    );
  }
}
