import 'package:flutter/material.dart';
import 'package:music/login/style/theme.dart' as theme;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

      /// 层叠 stack
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              buildSignInTextField(),
              // Padding(
              //   padding: EdgeInsets.only(top: 50),
              //   child: Text(
              //     'Forgot Password?',
              //     style: TextStyle(
              //         fontSize: 16,
              //         color: Colors.white,
              //         decoration: TextDecoration.underline),
              //   ),
              // ),
              /* Or */
              // Padding(
              //   padding: EdgeInsets.only(top: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         height: 1,
              //         width: 100,
              //         decoration: BoxDecoration(
              //             gradient: LinearGradient(
              //                 colors: [Colors.white10, Colors.white])),
              //       )
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(left: 15, right: 15),
              //   child: Text(
              //     'Or',
              //     style: TextStyle(fontSize: 16, color: Colors.white),
              //   ),
              // ),
              // Container(
              //   width: 100,
              //   decoration: BoxDecoration(
              //       gradient:
              //           LinearGradient(colors: [Colors.white, Colors.white10])),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       padding: EdgeInsets.all(10),
              //       decoration: BoxDecoration(
              //           shape: BoxShape.circle, color: Colors.white),
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.facebook,
              //           color: Color(0xFF0084ff),
              //         ),
              //         onPressed: null,
              //       ),
              //     ),
              //     Container(
              //       padding: EdgeInsets.all(10),
              //       decoration: BoxDecoration(
              //           shape: BoxShape.circle, color: Colors.white),
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.google,
              //           color: Color(0xFF0084ff),
              //         ),
              //         onPressed: null,
              //       ),
              //     ),
              //   ],
              // ),
              Positioned(
                child: buildSignInButton(),
                top: -20,
              )
            ],
          )
        ],
      ),
    );
  }

  /// 创建登录表单
  Widget buildSignInTextField() {
    return Container(
      width: 300,
      height: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: Form(
        key: _SignInFormKey,
        child: Column(
          children: [
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
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: TextFormField(
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: "Password",
                    border: InputBorder.none,
                    suffix: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
                      onPressed: _showPassword,
                    ),
                  ),
                  obscureText: !isShowPassword,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  validator: (value) {
                    /// 校验密码
                    if (value == null || value.isEmpty || value.length < 6) {
                      return "Password length must longer than 6!";
                    }
                  },
                  onSaved: (value) {
                    /// TODO --- save
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _onEditingComplete() {
    if (focusScopeNode == null) {
      focusScopeNode = FocusScope.of(context);
    }
    focusScopeNode.requestFocus(passwordFocusNode);
  }

  /// 显示密码
  _showPassword() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  /// 创建登录界面按钮
  Widget buildSignInButton() {
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
          'SIGNIN',
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
}
