import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:holywing_test/widget/carousel_widget.dart';
import 'package:holywing_test/widget/chart_widget.dart';

void main() {
  runApp(const MyApp());
}

const primary = Color(0xfff2c76f);
const bg1 = Color(0xff1d1d1d);
const bg2 = Color(0xff2c2c2c);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String apiUrl = 'https://api.jsonbin.io/b/6152c7f6aa02be1d445015a4';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: bg1,
          title: const Text(
            'Hi, Holypeople',
            style: TextStyle(color: Colors.white),
          ),
          actions: [_actions()],
        ),
        body: _bghome(),
      ),
    );
  }
}

Widget _bghome() {
  return Stack(
    children: [
      Container(decoration: const BoxDecoration(color: bg1)),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            CarouselLocal(),
            _containerLogin(),
            _divider(),
            _selectBar(),
            TopChart(),
          ],
        ),
      ),
    ],
  );
}

Widget _actions() {
  return (Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          child: const Image(image: AssetImage('assets/images/ic_qr.png')),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {},
          child: const Image(image: AssetImage('assets/images/ic_notif.png')),
        ),
      ),
    ],
  ));
}

Widget _containerLogin() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: Card(
        color: bg1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(color: bg2),
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage('assets/images/ic_login.png'),
              ),
            ),
            const Text(
              'Login to see voucher and point information',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _divider() {
  return Container(
    height: 8,
  );
}

Widget _selectBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InkWell(
        child: Column(
          children: [
            Container(height: 40, width: 40, child: Image(image: AssetImage('assets/images/ic_home_reservation.png'))),
            Text(
              'Reservation',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      InkWell(
        child: Column(
          children: [
            Container(height: 40, width: 40, child: Image(image: AssetImage('assets/images/ic_home_dinein.png'))),
            Text(
              'Dine In',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      InkWell(
        child: Column(
          children: [
            Container(height: 40, width: 40, child: Image(image: AssetImage('assets/images/ic_home_takeaway.png'))),
            Text(
              'Takeaway',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      InkWell(
        child: Column(
          children: [
            Container(height: 40, width: 40, child: Image(image: AssetImage('assets/images/ic_outlets.png'))),
            Text(
              'Outlets',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ],
  );
}
