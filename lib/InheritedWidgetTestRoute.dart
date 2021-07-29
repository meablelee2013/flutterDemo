import 'package:flutter/material.dart';

class InheritedWidgetTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _InheritedWidgetTestRouteState();


}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text("$count"),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  ++count;
                });
              },
                child: Text("Increase"),)
            ],
          )

      ),
    );
  }

}