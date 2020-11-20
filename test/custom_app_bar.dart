import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _AppBarbotton(title: 'LOG IN', onTap: () => print('GO AND LOGIN'))
            ],
            // const SizedBox(width:10.0),
            // Row(
            //   children: [
            //     _AppBarbotton( title: 'MASTERCLASS', onTap:()=> print ('Welcome'))
            //   ],
            // ),
          ),
        ));
  }
}

class _AppBarbotton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarbotton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'title',
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}
