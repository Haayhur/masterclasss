import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'styles.dart';

class Mainbutton extends StatelessWidget {
  final String title, icon;
  final Image imageurl;
  final Color containerColor, textColor;
  final Function onTap;

  const Mainbutton(
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

class MainActionButton extends StatelessWidget {
  MainActionButton({
    this.onPressed,
    this.label,
  });

  final VoidCallback onPressed;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: onPressed,
        elevation: 5,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: kwhite,
        child: label,
      ),
    );
  }
}
