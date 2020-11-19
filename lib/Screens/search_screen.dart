import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool typing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: typing ? TextBox() : Text("Title"),
        leading: IconButton(
          icon: Icon(typing ? Icons.search : Icons.search),
          onPressed: () {
            setState(() {
              typing = !typing;
            });
          },
        ),
      ),
      body: Center(
        child: Text('In Progress'),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      // color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.black,
            border: InputBorder.none,
            hintText: 'Try Films & TV'),
      ),
    );
  }
}
