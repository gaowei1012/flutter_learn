import 'package:flutter/material.dart';

class SingleChinldScrollViewPage extends StatefulWidget {
  @override
  _SingleChinldScrollViewPageState createState() =>
      _SingleChinldScrollViewPageState();
}

class _SingleChinldScrollViewPageState
    extends State<SingleChinldScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return Scaffold(
      appBar: AppBar(
        title: Text('scroll view'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Scrollbar(
            child: SingleChildScrollView(
              /// 垂直滚动
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                  children: str
                      .split("")
                      .map((c) => Text(
                            c,
                            textScaleFactor: 3.0,
                          ))
                      .toList()),
            ),
          )),
    );
  }
}
