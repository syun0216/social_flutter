import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: (Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/Street-Dance-01.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xB38560A9), Color(0xFF8560A9)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
      ],
    )));
  }
}
