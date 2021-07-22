import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageImplPage();
}

class MessageImplPage extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Second Page'),
    ));
  }
}
