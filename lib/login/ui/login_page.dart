import 'package:flutter/material.dart';
import 'package:music/login/style/theme.dart' as theme;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music/login/ui/sign_in_page.dart';
import 'package:music/login/ui/sign_up_page.dart';
import 'package:random_pk/random_pk.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  PageController _pageController;
  PageView _pageView;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageView = PageView(
      controller: _pageController,
      children: [SignInPage(), SignUpPage()],
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(

                /// 背景渐变
                gradient: theme.Theme.primaryGradient),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 75,
                ),
                Image(
                  width: 250,
                  height: 191,
                  image: AssetImage("assets/login_logo.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0x552B2B2B)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: _currentPage == 0
                              ? BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.white)
                              : null,
                          child: Center(
                            child: FlatButton(
                                onPressed: _existing,
                                child: Text(
                                  'Existing',
                                  style: TextStyle(fontSize: 16),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: _currentPage == 1
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  color: Colors.white)
                              : null,
                          child: Center(
                            child: FlatButton(
                              onPressed: _new,
                              child: Text(
                                'New',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _pageView,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _existing() {
    _pageController.animateToPage(0,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  _new() {
    _pageController.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}
