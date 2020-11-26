import 'package:flutter/material.dart';
// import 'package:masterclasss/choice/choice_details.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // bool typing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBox(),
        //  : Text("Title"),
        leading: IconButton(
          icon: Icon( Icons.search),
          onPressed: () {
            // showSearch(context: context, delegate: DataSearch());
            // setState(() {
            //   typing = !typing;
            // });
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

// class DataSearch extends SearchDelegate<String> {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
//     // TODO: implement buildActions
//     // throw UnimplementedError();
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//         icon: AnimatedIcon(
//           icon: AnimatedIcons.menu_arrow,
//           progress: transitionAnimation,
//         ),
//         onPressed: () {});

//     // TODO: implement buildLeading
//     throw UnimplementedError();
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     throw UnimplementedError();
//   }

//   // Since its more of backend, i will implement it later
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestionList = query.isEmpty ? choices : previews;
//     return ListView.builder(
//         itemBuilder: (context, index) => ListTile(
//             leading: Icon(Icons.book), title: Text(suggestionList[index])),
//         itemCount: suggestionList.length);
//   }
// }
