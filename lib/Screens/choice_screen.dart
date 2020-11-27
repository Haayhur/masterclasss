import 'package:flutter/material.dart';
import 'package:masterclasss/data/choice_details.dart';
import 'package:masterclasss/data/choice_model.dart';

import 'package:masterclasss/widgets/choice_card.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

// int length = 6;
// final Size screenSize = MediaQuery.of(context).size;

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.black,
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Text('LOG IN',
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body:
          // CustomScrollView(
          //   slivers: [
          //     _TitleClass(title: 'New Classes'),
          //     SliverList(
          //       // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //       //   maxCrossAxisExtent: null,
          //       // ),
          //       delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //           final Choice cho = choices[index];
          //           return ChoiceCard(
          //             onTap: () {},
          //             choiced: cho,
          //           );
          //         },
          //         // scrollDirection: Axis.horizontal,
          //         childCount: choices.length,
          //       ),
          //     ),
          //   ],
          // ),
          ListView(
        children: [
          _TitleClass(title: 'New Classes'),
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
                  onTap: () {},
                  choiced: cho,
                );
              },
            ),
          ),
          // SizedBox(
          //   height: 6.0,
          // ),
          _TitleClass(title: 'Class Previews'),

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
          _TitleClass(title: 'Popular Classes'),

          SizedBox(height: 10.0),
          // ListView.builder(
          //   // physics: NeverScrollableScrollPhysics(),
          //   itemCount: previews.length,
          //   // scrollDirection: Axis.horizontal,
          //   itemBuilder: (context, index) {
          //     final Preview pre = previews[index];
          //     return Populartile(
          //       previewed: pre,
          //     );
          //   },
          // ),
          Column(
            // 'I am still working on it, i want to convert it to CustomScrollview'
            children: <Widget>[
              Container(
                height: 200.0,
                width: 350.0,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
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
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TitleClass extends StatelessWidget {
  final String title;
  const _TitleClass({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

// class _AppBarbotton extends StatelessWidget {
//   final String title;
//   final Function onTap;

//   const _AppBarbotton({Key key, this.title, this.onTap}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Text(
//         title,
//         style: TextStyle(color: Colors.white, fontSize: 18.0),
//       ),
//     );
//   }
// }

// ListView.builder(
//                 itemCount: previews.length,
//                 // scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   final Preview pre = previews[index];
//                   return Populartile(
//                     previewed: pre,
//                   );
//                 },
//               ),

// Container(
//   height: 200.0,
//   width: 350.0,
