import 'package:flutter/material.dart';
import 'package:music/login/ui/login_page.dart';
import 'package:music/widget/checbox_page.dart';
import 'package:music/widget/constrained_page.dart';
import 'package:music/widget/container_page.dart';
import 'package:music/widget/decoratedbox_page.dart';
import 'package:music/widget/image_page.dart';
import 'package:music/widget/listview_page.dart';
import 'package:music/widget/login_base_page.dart';
import 'package:music/widget/pading_page.dart';
import 'package:music/widget/row_column_wrap.dart';
import 'package:music/widget/scaffold_tabbar_page.dart';
import 'package:music/widget/singlechildscrollview.dart';
import 'package:music/widget/swiper_page.dart';
import 'package:music/widget/textinput_form_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            /// 流式布局
            spacing: 8.0,

            /// 水平
            runSpacing: 8.0,

            /// 垂直
            alignment: WrapAlignment.spaceAround,
            children: [
              RaisedButton(
                  onPressed: _goToContainer,
                  child: Text('Container'),
                  textColor: Colors.black),
              RaisedButton(
                onPressed: _goToScaffold,
                child: Text('Scaffold & TabBar'),
              ),
              RaisedButton(
                onPressed: _goRowColumnWrap,
                child: Text('row & column & wrap'),
              ),
              RaisedButton(
                onPressed: _goToScaffold,
                child: Text('Scaffold & TabBar'),
              ),
              RaisedButton(
                onPressed: _goToImagePage,
                child: Text('image page'),
              ),
              RaisedButton(
                onPressed: _goToSwiperPage,
                child: Text('Swiper page'),
              ),
              RaisedButton(onPressed: _goToCheckBox, child: Text('checkbox')),
              RaisedButton(
                onPressed: _goToTextInput,
                child: Text('textinput & form'),
              ),
              RaisedButton(
                onPressed: _goToLogin,
                child: Text('login base page'),
              ),
              RaisedButton(
                onPressed: _goToLoginPage,
                child: Text('login'),
              ),
              RaisedButton(
                onPressed: _goToPadding,
                child: Text('padding'),
              ),
              RaisedButton(
                onPressed: _constrinace,
                child: Text('constrinace'),
              ),
              RaisedButton(
                onPressed: _decration,
                child: Text('box decration'),
              ),
              RaisedButton(
                onPressed: _scrollview,
                child: Text('scroll view'),
              ),
              RaisedButton(
                onPressed: _listview,
                child: Text('list view'),
              )
            ],
          )
        ],
      ),
    );
  }

  _goToContainer() {
    /// 路由跳转
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ContainerPage()));
  }

  _goToScaffold() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ScaffoldTabbarPage()));
  }

  _goRowColumnWrap() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RowColumnWrapPage()));
  }

  _goToImagePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ImagePage()));
  }

  _goToSwiperPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SwiperPage()));
  }

  _goToCheckBox() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CheckBoxPage()));
  }

  _goToTextInput() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TextInputFormPage()));
  }

  _goToLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginBasePage()));
  }

  _goToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  _goToPadding() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PaddingPage()));
  }

  _constrinace() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ConstrainedBoxPage()));
  }

  _decration() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DecoratedBoxPage()));
  }

  _scrollview() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SingleChinldScrollViewPage()));
  }

  _listview() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ListViewPage()));
  }
}
