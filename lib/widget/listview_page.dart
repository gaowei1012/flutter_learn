import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  static const loading = '##loading##';
  var _words = <String>[loading];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('list view'),
        ),
        body: ListView.separated(
          itemCount: _words.length,
          itemBuilder: (context, index) {
            /// 到了尾部
            if (_words[index] == loading) {
              /// 数据小于100条
              if (_words.length - 1 < 100) {
                _retrieveData();
                return Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.0,
                    ),
                  ),
                );
              } else {
                return Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    '没有更多了',
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              }
            }

            /// 已经加载100条数据
            return ListTile(
              title: Text(_words[index]),
            );
          },
          separatorBuilder: (context, index) => Divider(height: .0),
        ));
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        _words.insertAll(_words.length - 1,
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }
}
