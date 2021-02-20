import 'package:flutter/material.dart';
import 'package:testFlutter/screens/intro_page.dart';
import 'package:testFlutter/widgets/categories.dart';
import 'package:testFlutter/widgets/home_page.dart';
import 'package:testFlutter/widgets/login.dart';
import 'package:testFlutter/widgets/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
      ),
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
