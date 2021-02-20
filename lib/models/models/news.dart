import 'package:flutter/material.dart';

class News extends StatelessWidget {
  String header;
  String header2;
  String content;
  String imageUrl;

  News({this.header, this.header2, this.content, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
        color: Colors.grey.shade100,
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 500,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/times3.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            header2,
                            textAlign: TextAlign.right,
                          ),
                          // SizedBox(
                          //   width: 140,
                          // )
                        ],
                      ),
                      Text(
                        header,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
                  Container(
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(content),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover)),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "1.3k",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.comment,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "205",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "58",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
