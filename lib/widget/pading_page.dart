import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  @override
  _PaddingPageState createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('padding'),
        ),
        body: Row(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('all padding'),
                )),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Container(
                height: 30,
                width: 100,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green[100],
                    border: Border.merge(Border(), Border())),
                child: Text('all'),
              ),
            )
          ],
        ));
  }
}
