// import 'package:flutter/material.dart';
// import 'package:masterclasss/widgets/choice_screen.dart';

// import 'group_screen.dart';
// import 'profile_screen.dart';
// import 'search_screen.dart';

// class Master extends StatefulWidget {
//   @override
//   _MasterState createState() => _MasterState();
// }

// class _MasterState extends State<Master> {
//   int _currentIndex = 0;
//   List _listPages = List();
//   Widget _currentPage;
//   @override
//   void initState() {
//     super.initState();

//     _listPages
//       ..add(Choicescreen())
//       ..add(ProfileScreen())
//       ..add(SearchScreen())
//       ..add(GroupScreen());
//     _currentPage = Choicescreen();
//   }

//   void _changePage(int selectedIndex) {
//     setState(() {
//       _currentIndex = selectedIndex;
//       _currentPage = _listPages[selectedIndex];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
