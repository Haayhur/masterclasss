import 'package:flutter/material.dart';
import 'package:masterclasss/widgets/custom_buttons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(height: 25.0),
            Center(
              child: Text(
                'Sign in to get started',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                'Sign in to access your enrolled classes \n           and account information',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'By creating an account, you agree to our \n   Terms of Service and Privacy Policy',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Column(
                children: [
                  Mainbutton(
                    title: 'CONTINUE WITH GOOGLE',
                    containerColor: Colors.white,
                    textColor: Colors.black,
                    onTap: () {},
                  ),
                  SizedBox(height: 25.0),
                  Mainbutton(
                    title: 'CONTINUE WITH FACEBOOK',
                    containerColor: Colors.blue,
                    textColor: Colors.white,
                    onTap: () {},
                  ),
                  SizedBox(height: 15.0),
                  Center(
                    child: Text(
                      'OR',
                      style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Mainbutton(
                    title: 'CREATE AN ACCOUNT',
                    containerColor: Colors.pinkAccent,
                    textColor: Colors.white,
                    onTap: () {},
                  ),
                  SizedBox(height: 25.0),
                  Center(
                    child: InkWell(
                        child: Text(
                          'LOG IN',
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        }),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      appBar: new AppBar(
          leading: (IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          )),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          brightness: Brightness.light,
          backgroundColor: Colors.black,
          title: Text(
            'Your Profile',
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
