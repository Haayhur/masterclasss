import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:masterclasss/widgets/custom_buttons.dart';
import 'package:masterclasss/widgets/custom_text_field.dart';
import 'package:masterclasss/widgets/styles.dart';
import 'package:masterclasss/widgets/validator.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlack,
        extendBodyBehindAppBar: true,
        body: Form(
          child: Container(
            color: kBlack,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Icon(
                    Icons.radio_button_checked,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'MASTERCLASS',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kwhite,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: CustomTextField(
                              validator: (value) {
                                // email = value.trim();
                                return Validate.validateEmail(value);
                              },
                              // controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              labelText: 'Email',
                              prefixIcon: Icon(
                                Icons.email,
                                color: kwhite,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: CustomTextField(
                              validator: (value) {
                                // password = value.trim();
                                return Validate.requiredField(
                                    value, 'Password is required.');
                              },
                              // controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              labelText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: kwhite,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MainActionButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed('/');
                              // Navigator.pushNamed(context, '/');
                            },
                            label: Text(
                              'Login',
                              style: TextStyle(
                                color: kBlack,
                                letterSpacing: 1.3,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Divider(
                            color: kwhite,
                            thickness: 1,
                            indent: 40,
                            endIndent: 10,
                          ),
                        ),
                        Text('OR'),
                        Expanded(
                          child: Divider(
                            color: kwhite,
                            thickness: 1,
                            indent: 10,
                            endIndent: 40,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Create a new account  ',
                              style: TextStyle(
                                color: kwhite,
                                fontFamily: 'Montserrat',
                              ),
                              children: [
                                TextSpan(
                                  text: 'SignUp',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kwhite,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigator.pushNamed(context, "/register"
                                      // );
                                    },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
