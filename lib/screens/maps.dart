import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tedu Map'),
      ),
      body: Container(
        width: 700,
        height: 700,
        child: Image.asset(
          'assets/images/map.jpeg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
