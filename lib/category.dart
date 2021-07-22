import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryImplPage();
}

class CategoryImplPage extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text('Third Page'),
        ));
  }
}
