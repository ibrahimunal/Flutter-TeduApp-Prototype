import 'package:flutter/material.dart';
import 'package:testFlutter/widgets/filters.dart';
import 'package:testFlutter/widgets/tabs_screen.dart';
import 'package:testFlutter/screens/maps.dart';
import 'package:testFlutter/screens/tedu_news.dart';

import 'category_meals_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                CircleAvatar(
                  //radius: 115,
                  backgroundImage: NetworkImage(
                      "https://kampist.org/wp-content/plugins/wp-first-letter-avatar/images/default/256/latin_f.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Furkan Akgun",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabScreen()),
              );
            },
            leading: Icon(
              Icons.person,
              size: 26,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabScreen()),
              );
            },
            leading: Icon(
              Icons.people,
              size: 26,
            ),
            title: Text(
              "Orientation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsPage()),
              );
            },
            leading: Icon(
              Icons.book,
              size: 26,
            ),
            title: Text(
              "Tedu Times",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapScreen()),
              );
            },
            leading: Icon(
              Icons.map,
              size: 26,
            ),
            title: Text(
              "Tedu Map",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Filter()),
              );
            },
            leading: Icon(
              Icons.favorite,
              size: 26,
              color: Colors.red,
            ),
            title: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Filter()),
              );
            },
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
