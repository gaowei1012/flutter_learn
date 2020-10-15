import 'package:flutter/material.dart';

class ScaffoldTabbarPage extends StatefulWidget {
  @override
  _ScaffoldTabbarPageState createState() => _ScaffoldTabbarPageState();
}

class _ScaffoldTabbarPageState extends State<ScaffoldTabbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scaffold tabbar'),
      ),
      body: Container(
        child: Text('scall tabbar'),
      ),
    );
  }
}
