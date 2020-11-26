import 'package:flutter/material.dart';
import 'package:masterclasss/choice/choice_card.dart';
import 'package:masterclasss/choice/choice_details.dart';
import 'package:masterclasss/choice/choice_model.dart';
import 'package:masterclasss/widgets/styles.dart';

class GroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: CustomScrollView(
          slivers: [
            _Listname(title: 'Arts & Entertainment', subtitle: '27 Classes'),
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
            _Listname(title: 'Home & Lifestyle', subtitle: '8 Classes'),
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
            _Listname(title: 'Music', subtitle: '11 Classes'),
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
            _Listname(title: 'Food', subtitle: '8 Classes'),
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
            _Listname(title: 'Sports & Gaming', subtitle: '9 Classes'),
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
            _Listname(title: 'Writing', subtitle: '7 Classes'),
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
            _Listname(title: 'Drama & Arts', subtitle: '12 classes'),
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
        ),
      )),
    );
  }
}

class _Listname extends StatelessWidget {
  final String title;
  final String subtitle;
  const _Listname({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: ListTile(
      title: Text(title, style: kTitleStyle
          //  TextStyle(
          //     color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)
          ),
      subtitle: Text(subtitle),
    ));
  }
}
