import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MineImplPage();
}

class MineImplPage extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Text(
            "haha" * 3,
            style: TextStyle(
              color: Colors.white
            )
          ),
          padding: EdgeInsets.all(10),
          color: Colors.red,
        )
      ],
    ));
  }
}
