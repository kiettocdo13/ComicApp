import 'package:flutter/material.dart';
import 'package:text_1/listruyen/toptruyen/toptruyen.dart';

import 'package:text_1/listruyen/truyendecu/truyendecu.dart';
import 'package:text_1/listruyen/truyenmoicapnhat/truyenmoicapnhat.dart';

import 'drawer.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeSreen();
  }
}

class HomeSreen extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          title: Image.asset(
            'acssets/images/logo-nettruyen.png',
            // fit: BoxFit.cover,
          ),
        ),
        endDrawer: Drawer1(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              DanhSachDeCu(),
              TruyenMoiCapNhat(),
              ListTopTruyen(),
            ],
          ),
        ));
  }
}
