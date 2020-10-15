import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _switchSelected = true;
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkbox page'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              /// Switch
              Switch(
                  value: _switchSelected,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _switchSelected = value;
                    });
                  }),
              Text(_switchSelected ? '开' : '关')
            ],
          ),
          Row(
            children: [
              /// CheckBox
              Checkbox(
                  value: _checkbox,
                  checkColor: Colors.yellow,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = value;
                    });
                  }),
              Text(_checkbox ? '开' : '关')
            ],
          )
        ],
      ),
    );
  }
}
