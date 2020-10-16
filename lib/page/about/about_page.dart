import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final _title = '关于';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text(_title),
      ),
    );
  }
}
