import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginImplPage();
}

class LoginImplPage extends State<LoginPage> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            TextField(
              controller: controller1,
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              controller: controller2,
              focusNode: focusNode2,
              decoration: InputDecoration(

                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            ),
            OutlinedButton(onPressed: () {
              focusNode1.unfocus();
              focusNode2.unfocus();
              login();
            }, child: Text("登录"))
          ],
        ));
  }

  void login() {
    var text1 = controller1.value.text ;
    var text2 = controller2.value.text ;
    print("text1="+text1+"---text2="+text2);

  }
}
