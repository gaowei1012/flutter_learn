import 'package:flutter/material.dart';
import 'package:music/page/about/about_page.dart';
import 'package:music/page/home/home_page.dart';
import 'package:music/page/setting/setting_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 1;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(HomePage())..add(AboutPage())..add(SettingPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mateial App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_outlined), label: 'About')
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        onTap: _onTap,
      ),
      body: list[_currentIndex],
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
