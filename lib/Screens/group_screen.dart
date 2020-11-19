import 'package:flutter/material.dart';
import 'package:masterclasss/choice/choice_card.dart';
import 'package:masterclasss/choice/choice_details.dart';
import 'package:masterclasss/choice/choice_model.dart';

class GroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.black),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Arts & Entertainment',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('27 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Home & Lifestyle',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('8 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Music',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('11 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Food',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('8 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Sports & Gaming',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('9 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Writing',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('7 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('Design & Style',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('6 Classes'),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Preview pre = previews[index];

                return Populartile(
                  previewed: pre,
                );
              },
              childCount: previews.length,
            ),
          ),
        ],
      )),
    );
  }
}
