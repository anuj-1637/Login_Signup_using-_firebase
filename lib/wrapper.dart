import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_signup/main.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class Wrapper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WrapperState();
}

class WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyHomePage(title: "helo");
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
