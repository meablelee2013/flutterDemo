import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DynamicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DynamicImplPage();
}

class DynamicImplPage extends State<DynamicPage> {
  List<Image> imgs = [
    //建立了一个图片数组
    Image.network(
      "https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
    ),
  ];
  final ImagePicker _picker = ImagePicker();
  var fileFromCamera;

  Widget _ImageView(XFile xfile) {
    if (xfile == null) {
      return Center(
        child: Text("请选择图片或者拍照"),
      );
    } else {
      return Image.file(File(xfile.path), width: 200, height: 200);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        new Container(
          width: 400,
          height: 220,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return imgs[index];
            },
            itemCount: 3,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
            autoplay: true,
            outer: false,
          ),
        ),
        _ImageView(fileFromCamera),
        new OutlinedButton(
          onPressed: () async {
            var xFile = await _picker.pickImage(source: ImageSource.camera);
            setState(() {
              fileFromCamera = xFile!;
            });
          },
          child: Text("拍照"),
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              side: BorderSide(width: 2, color: Colors.red)),
        ),
        new OutlinedButton(
          onPressed: () async {
            var xFile = await _picker.pickImage(source: ImageSource.gallery);
            setState(() {
              fileFromCamera = xFile!;
            });
          },
          child: Text("相册"),
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              side: BorderSide(width: 2, color: Colors.red)),
        )
      ],
    ));
  }
}
