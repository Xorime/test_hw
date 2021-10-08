import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holywing_test/models/carousel_model.dart';
import 'package:holywing_test/repositories/carousel_controller.dart';

class CarouselLocal extends StatelessWidget {
  CarouselController2 _controller = Get.put(CarouselController2());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CarouselSlider(
          items: _generateCarouselContents(),
          options: CarouselOptions(
            height: 300,
            enlargeCenterPage: false,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
          ));
    });
  }

  List<Widget> _generateCarouselContents() {
    List<Widget> _items = [];
    for (Data data in _controller.arrData) {
      _items.add(_cell(data));
    }

    return _items;
  }

  Widget _cell(Data data) {
    return Container(
      child: data.promo == null
          ? Image.network(
              '${data.news?.image}',
            )
          : data.news == null
              ? Image.network(
                  '${data.promo?.image}',
                )
              : Container(),
    );
    // '${data.ordernum}',
    // style: TextStyle(color: Colors.red),
  }
}
