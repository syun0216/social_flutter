import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person'),
      ),
      body: Center(
        child: Text('This is the person page'),
      ),
    );
  }
}
