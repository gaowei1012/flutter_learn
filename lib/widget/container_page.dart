import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  bool _active = false;
  final _title = 'container';
  final active = 'Active';
  final inactive = 'Inactive';

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container detail'),
      ),
      body: Container(
        child: GestureDetector(
          onTap: _handleTap,
          child: Container(
            width: 200.0,
            height: 200.0,
            margin: EdgeInsets.only(left: 130, top: 30),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _active ? Colors.cyan : Colors.yellow,
              gradient: RadialGradient(

                  /// 背景渐变
                  colors: [Colors.red, Colors.yellow],
                  center: Alignment.center,

                  /// center
                  radius: .98),
              boxShadow: [
                /// 背景阴影
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(2.0, 1.0),
                    blurRadius: 4.0),
              ],
            ),

            /// 卡片倾斜
            transform: Matrix4.rotationZ(.3),

            child: Text(
              _active ? active : inactive,
              style: TextStyle(fontSize: 32, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
