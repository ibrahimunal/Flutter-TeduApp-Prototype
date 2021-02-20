import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
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
          height: 450,
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
                            image: AssetImage('assets/images/dst.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'TEDU Doğa Sporları Topluluğu',
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
                height: 5,
              ),
              Text(
                  "Eğer siz de ailemizin bir parçası olmak istiyorsanız tanışma toplantımıza bekliyoruz... Yer: Ahmet Ersan Konferans Salonu"
                  "Tarih: 5 Ekim Çarşamba 2021 "),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("assets/images/dst1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("assets/images/dst2.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("assets/images/dst3.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
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
