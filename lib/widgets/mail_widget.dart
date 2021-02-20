import 'package:flutter/material.dart';

class MailWidget extends StatelessWidget {
  // String color;
  // MailWidget({this.color});
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
          height: 300,
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
                    'TEDU MAIL',
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
                child: Container(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                          "2020-2021 Akademik Takvimde bahar yarıyılı tarihlerinde güncellemeler yapılmıştır"
                          "İlgili güncellemeler sarı renk ile belirtilmiş olup aşağıdaki bağlantıdan ulaşabilirsiniz. "
                          "Sağlıklı günlerde görüşme dileğiyle"),
                      Text(
                        "https://www.tedu.edu.tr/sites/default/files/content_files/2020-2021_akadmeik_takvim_senato_formati_20.01.2021_1.pdf",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
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
