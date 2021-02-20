import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testFlutter/widgets/login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue[700],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "TEDU APP",
                style: GoogleFonts.oswald(fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/crop.png',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInPage()),
                    );
                  },
                  child: Card(
                    color: Colors.blue[200],
                    elevation: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 60,
                            ),
                            Text(
                              "Visitor",
                              style: GoogleFonts.oswald(),
                            )
                          ],
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInPage()),
                    );
                  },
                  child: Card(
                    color: Colors.blue[200],
                    elevation: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 60,
                            ),
                            Text(
                              "Student",
                              style: GoogleFonts.oswald(),
                            )
                          ],
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInPage()),
                    );
                  },
                  child: Card(
                    color: Colors.blue[200],
                    elevation: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 60,
                            ),
                            Text(
                              "Staff",
                              style: GoogleFonts.oswald(),
                            )
                          ],
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
