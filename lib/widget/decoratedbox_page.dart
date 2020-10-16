import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatefulWidget {
  @override
  _DecoratedBoxPageState createState() => _DecoratedBoxPageState();
}

class _DecoratedBoxPageState extends State<DecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DecoratedBox page'),
        ),
        body: Flex(
          /// 水平居中

          mainAxisAlignment: MainAxisAlignment.center,

          /// x轴对其
          direction: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                /// 背景渐变
                gradient:
                    LinearGradient(colors: [Colors.red, Colors.orange[700]]),
                borderRadius: BorderRadius.circular(3),

                /// 渐变
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0)
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                child: Text('box decroation'),
              ),
            ),
          ],
        ));
  }
}
