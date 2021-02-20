import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:testFlutter/screens/feeds_screen.dart';
import 'package:testFlutter/widgets/tabs_screen.dart';

enum authProblems { UserNotFound, PasswordNotValid, NetworkError }

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  //Controllers for e-mail and password textfields.
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _displayNameValid = true;
  bool _passwordValid = true;

  //Handling signup and signin
  bool signUp = true;

  //Handling progressbar in login page
  bool logging = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.white,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              //logging ? linearProgress() : Text(''),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    new SizedBox(
                      height: 50,
                    ),
                    new Container(
                      width: 950,
                      height: 140,
                      color: Colors.white,
                      child: new Image.asset('assets/images/TEDUlogoEn.gif'),
                      alignment: Alignment.center,
                    ),
                    new SizedBox(
                      height: 20,
                    ),
                    buildLoginUI(),
                    // if (_errorMsg != null) Text("Error occured: $_errorMsg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLoginUI() {
    return new Container(
      child: Column(
        children: [
          buildUsernameField(),
          SizedBox(
            height: 10,
          ),
          buildPasswordField(),
          SizedBox(
            height: 10,
          ),
          buildLoginButton(),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forgotten your login details?",
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () => print('null'),
                child: Text("Get Help",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Expanded(
                child: Divider(
              color: Colors.grey,
            )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text("OR", style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
                child: Divider(
              color: Colors.grey,
            )),
            SizedBox(
              width: 30,
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          //buildGoogleSignInButton(),
          //Insta section
          // FlatButton.icon(
          //   icon: Icon(Icons.input),
          //   label: Text(
          //     "Instagram Login",
          //   ),
          //   onPressed: _loginAndGetData,
          //   color: Colors.pink.shade400,
          // ),
          //  _userData != null
          //     ? Text(
          //         _userData.toString(),
          //         style: TextStyle(color: Colors.white),
          //       )
          //     : Text('erro null'),
        ],
      ),
    );
  }

  Container buildUsernameField() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width / 5 * 4,
      height: 50,
      child: TextField(
          controller: displayNameController,
          decoration: InputDecoration(
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.black),
            errorText: _displayNameValid ? null : "Invalid username!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }

  Container buildPasswordField() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width / 5 * 4,
      height: 50,
      child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.black),
            errorText: _passwordValid ? null : "Invalid password!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }

  Container buildLoginButton() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
        color: Colors.blue,
        width: queryData.size.width / 5 * 4,
        height: 50,
        child: FlatButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => TabScreen()));
          },
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
