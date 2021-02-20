import 'package:flutter/material.dart';
import 'package:testFlutter/models/meal.dart';
import 'package:testFlutter/widgets/meal_item_deatail.dart';

Widget mediaPreview;

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordibility;

  const MealItem(this.id, this.title, this.imageUrl, this.duration,
      this.complexity, this.affordibility);

  String get complexityText {
    if (complexity == Complexity.Challenging) {
      return 'High';
    } else if (complexity == Complexity.Hard) {
      return 'Mid';
    } else {
      return 'Low';
    }
  }

  String get affordabilityTest {
    if (affordibility == Affordability.Affordable) {
      return 'Affordable';
    } else if (affordibility == Affordability.Luxurious) {
      return 'Luxurious';
    } else if (affordibility == Affordability.Pricey) {
      return 'Pricey';
    }
  }

  Row buildPostOwnerHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
              "https://kampist.org/wp-content/plugins/wp-first-letter-avatar/images/default/256/latin_f.png"),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          'Furkan Akgun',
          style: TextStyle(color: Colors.black),
        ),
        Text(
          'Furkan Akgun',
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }

  configureMediaPreview(context) {
    mediaPreview = Container(
      color: Colors.white,
      height: 50.0,
      width: 50.0,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: Image.network(
            imageUrl,
            height: 20,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    configureMediaPreview(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Container(
        color: Colors.blueGrey,
        child: ListTile(
          title: GestureDetector(
            onTap: () => print('ads'),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                'Furkan Akgun',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                "${duration} min ago",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.priority_high),
              SizedBox(
                width: 6,
              ),
              Text(
                complexityText,
                style: TextStyle(color: Colors.red[900]),
              )
            ],
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://kampist.org/wp-content/plugins/wp-first-letter-avatar/images/default/256/latin_f.png"),
          ),
          trailing: mediaPreview,
        ),
      ),
    );

    // return InkWell(
    //   onTap: () => {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MealItemDetail(
    //                 id: id,
    //                 title: title,
    //               )),
    //     )
    //   },
    //   child: Card(
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    //     elevation: 5,
    //     margin: EdgeInsets.all(15),
    //     child: Column(
    //       children: <Widget>[
    //          Padding(
    //            padding: const EdgeInsets.all(8.0),
    //            child: buildPostOwnerHeader(),
    //          ),
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Stack(
    //             children: <Widget>[
    //               ClipRRect(
    //                 borderRadius: BorderRadius.only(
    //                     topLeft: Radius.circular(15),
    //                     topRight: Radius.circular(15)),
    //                 child: Image.network(
    //                   imageUrl,
    //                   height: 250,
    //                   width: double.infinity,
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //               Positioned(
    //                 bottom: 20,
    //                 right: 10,
    //                 child: Container(
    //                   width: 220,
    //                   color: Colors.black54,
    //                   padding: EdgeInsets.symmetric(horizontal: 10),
    //                   child: Text(
    //                     title,
    //                     style: TextStyle(
    //                       fontSize: 25,
    //                       color: Colors.white,
    //                     ),
    //                     softWrap: true,
    //                     overflow: TextOverflow.fade,
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Expanded(
    //                   child: Text(
    //                         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text epsum",
    //                     overflow: TextOverflow.ellipsis,
    //                     maxLines: 55,
    //                     style: TextStyle(color: Colors.grey, fontSize: 15),
    //                   ),
    //                 ),
    //                 // SizedBox(
    //                 //   width: queryData.size.width / 12,
    //                 // ),
    //               ],
    //             ),
    //           ),
    //         Padding(
    //           padding: EdgeInsets.all(10),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Row(
    //                 children: <Widget>[
    //                   Icon(Icons.schedule),
    //                   SizedBox(
    //                     width: 6,
    //                   ),
    //                   Text(
    //                   "${duration} min ago",
    //                    overflow: TextOverflow.ellipsis,
    //                    style: TextStyle(color: Colors.grey),
    //                  ),
    //                 ],
    //               ),
    //               Row(
    //                 children: <Widget>[
    //                   Icon(Icons.priority_high_outlined),
    //                   SizedBox(
    //                     width: 6,
    //                   ),
    //                   Text(complexityText)
    //                 ],
    //               ),
    //               // Row(
    //               //   children: <Widget>[
    //               //     Icon(Icons.attach_money),
    //               //     SizedBox(
    //               //       width: 6,
    //               //     ),
    //               //     Text(affordabilityTest)
    //               //   ],
    //               // )
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
