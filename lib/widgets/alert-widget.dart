import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
        color: Colors.red.shade300,
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 200,
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
                            image: AssetImage('assets/images/tedu.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Acil Kan İhtiyacı',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
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
                height: 8,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        Text(
                            "Okulumuzun John Doe adli öğrencisinin yakınının acil ARh+ kan ihtiyacı vardır +905052652526 numarasini arayarak irtibata gecebilirsiniz  "),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.white.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "1.3k",
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
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
                            color: Colors.white.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "205",
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
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
                                TextStyle(color: Colors.white.withOpacity(0.8)),
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
