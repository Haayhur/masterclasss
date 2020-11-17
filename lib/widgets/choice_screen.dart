import 'package:flutter/material.dart';
import 'package:masterclasss/Screens/group_screen.dart';
import 'package:masterclasss/Screens/profile_screen.dart';
import 'package:masterclasss/Screens/search_screen.dart';
import 'package:masterclasss/choice/choice_card.dart';
import 'package:masterclasss/choice/choice_details.dart';
import 'package:masterclasss/choice/choice_model.dart';

class Choicescreen extends StatefulWidget {
  @override
  _ChoicescreenState createState() => _ChoicescreenState();
}

// int length = 6;
// final Size screenSize = MediaQuery.of(context).size;

class _ChoicescreenState extends State<Choicescreen> {
  // int _selectedIndex = 0;
  // List<Widget> _widgetOptions = <Widget>[
  //   ProfileScreen(),
  //   GroupScreen(),
  //   SearchScreen(),
  //   ProfileScreen()
  // ];
  // void _onItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,

        // fixedColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'box'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person')
        ],
        // currentIndex: _selectedIndex,
        // onTap: _onItemTap,
      ),
      appBar: new AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text('LOG IN',
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
        // title: Text(
        //   'LOG IN',
        //   style: const TextStyle(
        //     fontSize: 15.0,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   textAlign: TextAlign.end,
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'New Classes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            new Container(
              height: 370.0,
              width: 350.0,
              child: ListView.builder(
                // shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                itemCount: choices.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Choice cho = choices[index];
                  return ChoiceCard(
                    choiced: cho,
                  );
                },
              ),
            ),
            // SizedBox(
            //   height: 6.0,
            // ),
            Row(
              children: [
                Text(
                  'Class Previews',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            new Container(
              height: 200.0,
              width: 350.0,
              child: ListView.builder(
                itemCount: previews.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Preview pre = previews[index];
                  return PreviewCard(
                    previewed: pre,
                  );
                },
              ),
            ),
            SizedBox(),
            Row(
              children: [
                Text(
                  'Popular Classes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                new Container(
                  height: 200.0,
                  width: 350.0,
                  child: ListView.builder(
                    itemCount: previews.length,
                    // scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final Preview pre = previews[index];
                      return Populartile(
                        previewed: pre,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// bottomNavigationBar: ),
//   return SafeArea(
//     child: Scaffold(
//       body: Column(
//         Container(
//           height: 150.0,
//           width: 150.0,
//           child: ListView.builder(
//             itemCount: choices.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index)
//             final Choice cho = choices[index];

//                 return ChoiceCard(
//                   choiced: cho,
//                 );
//               }),

//             SizedBox(height: 60.0),
//             Container(
//           color: Colors.black,
//           height: 370.0,
//           width: 350,
//           child: ListView.builder(
//               itemCount: choices.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 final Choice cho = choices[index];

//                 return ChoiceCard(
//                   choiced: cho,
//                 );
//               }),
//         ),
//       ),
//     ),
//     // CustomScrollView(
//     //   slivers: [
//     //     SliverAppBar(),

//     //   ],
//   //     // ),
//   //   ),
//   // };
// }

class _AppBarbotton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarbotton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}

// appBar: PreferredSize(
//   preferredSize: Size(screenSize.width, 50.0),
//   child: _AppBarbotton(
//     title: 'LOG IN',
//     onTap: () => print('GO AND LOGIN'),
//   ),
// ),
// // AppBar(
// //   title: Text("Masterclass"),
// // ),
