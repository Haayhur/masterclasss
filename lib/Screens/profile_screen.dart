import 'package:flutter/material.dart';

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
                  Mainbotton(
                    title: 'CONTINUE WITH GOOGLE',
                    containerColor: Colors.white,
                    textColor: Colors.black,
                    onTap: () {},
                  ),
                  SizedBox(height: 25.0),
                  Mainbotton(
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
                  Mainbotton(
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
                        onTap: () {}),
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

class Mainbotton extends StatelessWidget {
  final String title, icon;
  final Image imageurl;
  final Color containerColor, textColor;
  final Function onTap;

  const Mainbotton(
      {Key key,
      this.title,
      this.containerColor,
      this.textColor,
      this.imageurl,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
