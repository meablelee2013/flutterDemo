import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DynamicPage extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Container(
        width: 400,
        height: 150,
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
    ));
  }
}
