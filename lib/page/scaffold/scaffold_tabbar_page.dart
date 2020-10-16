import 'package:flutter/material.dart';

class ScallFoldTabBarPage extends StatefulWidget {
  @override
  _ScallFoldTabBarPageState createState() => _ScallFoldTabBarPageState();
}

class _ScallFoldTabBarPageState extends State<ScallFoldTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.green[200],
                    width: 1,
                    style: BorderStyle.solid))),
        child: Text('hello'),
      ),
    );
  }
}
