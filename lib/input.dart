import 'package:flutter/material.dart';

class H1text extends StatelessWidget {
  final String text;
  final double fontSize;
  final double fontWeight;
  final Color color;

  H1text({this.text, this.fontSize, this.fontWeight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black,
        ));
  }
}
