import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatefulWidget {
  @override
  _ConstrainedBoxPageState createState() => _ConstrainedBoxPageState();
}

class _ConstrainedBoxPageState extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox&SizeBox&UnconstrainedBox'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),

            /// 限制容器宽度、高度
            child: SizedBox(
              width: 40,
              height: 40,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text('read'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
