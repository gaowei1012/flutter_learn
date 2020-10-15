import 'package:flutter/material.dart';

class LoginBasePage extends StatefulWidget {
  @override
  _LoginBasePageState createState() => _LoginBasePageState();
}

class _LoginBasePageState extends State<LoginBasePage> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _pwdContaroller = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login base page'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      hintText: '用户名', icon: Icon(Icons.person)),
                  validator: (v) {
                    /// 校验用户名
                    return v.trim().length > 0 ? null : '用户名不能空';
                  },
                ),
                TextFormField(
                  autofocus: true,
                  controller: _pwdContaroller,
                  decoration:
                      InputDecoration(hintText: '密码', icon: Icon(Icons.lock)),
                  validator: (p) {
                    return p.trim().length > 0 ? null : '密码不能为空';
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 38),
                  child: Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          color: Colors.blue,
                          padding: EdgeInsets.all(16),
                          onPressed: _submit,
                          child: Text(
                            '登录',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Future _submit() {
    if ((_formKey.currentState as FormState).validate()) {
      /// 通过验证，提交
    }
  }
}
