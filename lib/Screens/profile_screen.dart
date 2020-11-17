import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // child:Column(),
          child: Column(children: <Widget>[
            Text(
              'Sign in to get started',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            Text(
              'Sign in to acces your enrolled classes \n and account information',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'By creating an account, you agree to our \n Terms of Service and Privacy Policy',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: InkWell(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                        color: Colors.black,
                      ),
                      Text('CONTINUE WITH GOOGLE',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: InkWell(
                child: Container(
                  color: Colors.blue,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                        color: Colors.black,
                      ),
                      Text('CONTINUE WITH FACEBOOK',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            Text(
              'OR',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: InkWell(
                child: Container(
                  color: Colors.pink,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                        color: Colors.black,
                      ),
                      Text('CREATE AN ACCOUNT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            Text(
              'LOG IN',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
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
