import 'package:flutter/material.dart';
import 'package:masterclasss/choice/choice_model.dart';

class ChoiceCard extends StatelessWidget {
  final Choice choiced;

  ChoiceCard({this.choiced});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          elevation: 13.0,
          color: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Image.asset(
            choiced.image,
            fit: BoxFit.cover,
            height: 250,
            width: 160,
          ),
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.all(8.0),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 160,
                child: Text(
                  choiced.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 160,
                child: Text(
                  choiced.field,
                  // textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                  // overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PreviewCard extends StatelessWidget {
  final Preview previewed;

  PreviewCard({this.previewed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          elevation: 13.0,
          color: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Image.asset(
            previewed.image,
            fit: BoxFit.fitWidth,
            height: 100,
            width: 200,
          ),
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.all(8.0),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 200,
                child: Text(
                  previewed.field,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 200,
                child: Text(
                  previewed.name,
                  // textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                  // overflow: TextOverflow.clip,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class PreviewsCard extends StatelessWidget {
//   final Choice choiced;

//   PreviewsCard({this.choiced});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         color: Colors.black,
//         child: Column(
//           children: <Widget>[
//             new Expanded(
//                 child: Container(
//               width: 200.0,
//               height: 100.0,
//               child: Image.asset(choiced.image, fit: BoxFit.fitWidth),
//             )),
//             // SizedBox(width: 13.0),
//             new Container(
//               width: 200.0,
//               // height: 260.0,
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(choiced.name),
//                   // Divider(),
//                   Text(
//                     choiced.field,
//                     textAlign: TextAlign.end,
//                     overflow: TextOverflow.ellipsis,
//                     // overflow: TextOverflow.clip,
//                     maxLines: null,
//                     style: const TextStyle(
//                       fontSize: 10.0,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//           crossAxisAlignment: CrossAxisAlignment.start,
//         ));
//   }
// }

class Populartile extends StatelessWidget {
  final Preview previewed;

  Populartile({this.previewed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: SizedBox(
            height: 100,
            width: 50,
            child: Image.asset(
              previewed.image,
              fit: BoxFit.cover,
            )),
        title: Text(
          previewed.name,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(previewed.field),
      ),
      onTap: () {},
    );
  }
}
