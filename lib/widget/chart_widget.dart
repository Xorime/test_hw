import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holywing_test/models/chart_model.dart';
import 'package:holywing_test/repositories/chart_controller.dart';

class TopChart extends StatelessWidget {
  final ChartController _controller = Get.put(ChartController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff2c2c2c),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "HolyPeople Top Charts",
                style: TextStyle(color: Colors.white),
              ),
              ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: _generateChartContents(),
              ),
            ],
          ),
        ),
      );
    });
  }

  List<Widget> _generateChartContents() {
    List<Widget> _items = [];
    for (Data data in _controller.arrData) {
      _items.add(_cell(data));
    }
    return _items;
  }

  Widget _cell(Data data) {
    return ListTile(
      onTap: () {},
      leading: Image.network(data.song.originalartist.image),
      title: Text(data.song.title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(data.song.originalartist.name, style: const TextStyle(color: Colors.white)),
    );
  }
}
