import 'package:flutter/material.dart';

class ProfileRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // child:Column(),
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'By creating an account, you agree to our \n   Terms of Service and Privacy Policy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () {},
                            color: Colors.black,
                          ),
                          Text('CONTINUE WITH GOOGLE',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () {},
                            // color: Colors.black,
                          ),
                          Text('CONTINUE WITH FACEBOOK',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'OR',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: InkWell(
                    child: Container(
                      // height: 5.0,
                      // width: 10.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.pinkAccent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.create),
                              onPressed: () {},
                              color: Colors.pinkAccent
                              // color: Colors.black,
                              ),
                          Text('CREATE AN ACCOUNT',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            InkWell(
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {}),
          ]),
        ),
      ),
      // appBar: new AppBar(
      //     leading: (IconButton(
      //       icon: const Icon(Icons.person),
      //       onPressed: () {},
      //     )),
      //     actions: <Widget>[
      //       IconButton(
      //         icon: const Icon(Icons.settings),
      //         onPressed: () {},
      //       ),
      //     ],
      //     brightness: Brightness.light,
      //     backgroundColor: Colors.black,
      //     title: Text(
      //       'Your Profile',
      //       style: const TextStyle(
      //         fontSize: 22.0,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     )),
    );
  }
}
