import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MineImplPage();
}

class MineImplPage extends State<MinePage> {
  List<String> imageUrl = [
    "https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  ];
  List<String> text = [
    "simple1",
    "simple2",
    "simple3",
    "simple4",
    "simple5",
    "simple6",
    "simple7",
    "simple8"
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrl.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.network(imageUrl[index], width: 250, height: 180,fit:BoxFit.cover ),
                      Container(
                        child: Text(text[index]),
                        height: 40,
                        alignment:Alignment.center,
                      )
                    ],
                  );
                }),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrl.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.network(imageUrl[index], width: 250, height: 180,fit:BoxFit.cover ),
                      Container(
                        child: Text(text[index]),
                        height: 40,
                        padding: EdgeInsets.all(10),
                        alignment:Alignment.center,
                        color: Colors.redAccent,
                      )
                    ],
                  );
                }),
          ),
        ),
      ],
    ));
  }
}
