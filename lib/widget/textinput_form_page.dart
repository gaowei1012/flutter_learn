import 'package:flutter/material.dart';

class TextInputFormPage extends StatefulWidget {
  @override
  _TextInputFormPageState createState() => _TextInputFormPageState();
}

class _TextInputFormPageState extends State<TextInputFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textinput form'),
      ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,

              /// 下划线
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.blue[200], width: .6))),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    // labelText: "用户名",
                    hintText: "请输入用户名",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.blue[200], width: .6))),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: '请输入密码',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock)),
            ),
          )
        ],
      ),
    );
  }
}
