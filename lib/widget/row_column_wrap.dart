import 'package:flutter/material.dart';

class RowColumnWrapPage extends StatefulWidget {
  @override
  _RowColumnWrapPageState createState() => _RowColumnWrapPageState();
}

class _RowColumnWrapPageState extends State<RowColumnWrapPage> {
  final _title = 'row & column & wrap';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              Container(
                child: Text('hello'),
              ),
              Container(
                child: Text('world'),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Text('container'),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.greenAccent),
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: Text('row'),
              )
            ],
          )
        ],
      ),
    );
  }
}
