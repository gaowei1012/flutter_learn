import 'package:flutter/material.dart';
import 'package:music/login/style/theme.dart' as theme;

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  /// 控制焦点
  FocusNode emailFocusNode = new FocusNode();
  FocusNode passwordFocusNode = new FocusNode();
  FocusScopeNode focusScopeNode = new FocusScopeNode();

  /// global key
  GlobalKey<FormState> _SignInFormKey = GlobalKey();
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23),
      child: Stack(
        /// 居中
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              buildSignUpTextField(),
              Positioned(
                child: buildSignUpButton(),
                top: -20,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildSignUpTextField() {
    return Container(
      width: 300,
      height: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: Form(
        key: _SignInFormKey,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 20, bottom: 20),
                child: new TextFormField(
                  decoration: new InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      hintText: "Name",
                      border: InputBorder.none),
                  style: new TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 1,
              width: 250,
              color: Colors.green[400],
            ),
            Flexible(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                child: TextFormField(
                  focusNode: emailFocusNode,
                  onEditingComplete: _onEditingComplete,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: "Email Address",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Email can not be empty!";
                    }
                  },
                  onSaved: (value) {},
                ),
              ),
            ),
            Container(
              height: 1,
              width: 250,
              color: Colors.green[400],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 20, bottom: 20),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    icon: new Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: "Password",
                    border: InputBorder.none,
                    suffixIcon: new IconButton(
                        icon: new Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        onPressed: () {}),
                  ),
                  obscureText: true,
                  style: new TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 1,
              width: 250,
              color: Colors.green[400],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 20, bottom: 20),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    icon: new Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: "Confirm Passowrd",
                    border: InputBorder.none,
                    suffixIcon: new IconButton(
                        icon: new Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        onPressed: () {}),
                  ),
                  obscureText: true,
                  style: new TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSignUpButton() {
    return GestureDetector(
      child: Container(
        width: 240,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(left: 42, right: 42, top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: theme.Theme.primaryGradient),
        child: Text(
          'SIGNUP',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      onTap: () {
        if (_SignInFormKey.currentState.validate()) {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('执行登录操作')));
          _SignInFormKey.currentState.save();
        }
      },
    );
  }

  _onEditingComplete() {}

  _showPassword() {}
}
