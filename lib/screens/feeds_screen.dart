import 'package:flutter/material.dart';
import 'package:testFlutter/widgets/alert-widget.dart';
import 'package:testFlutter/widgets/card_item.dart';
import 'package:testFlutter/widgets/mail_widget.dart';
import 'package:testFlutter/widgets/main_drawer.dart';

class FeedsScreen extends StatelessWidget {
  List<Widget> listItems = [
    AlertMail(),
    FeedCard(),
    MailWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Feed'),
      // ),
      // drawer: MainDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return listItems[index];
        },
        itemCount: listItems.length,
      ),
    );
  }
}
