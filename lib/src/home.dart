import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/home/widget_home.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/listview.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';
import 'package:savedata/src/home/WidgetHomes/textfield_home.dart';
import 'gaenam/basic/main.dart';
import 'home/WidgetHomes/datatable_home.dart';
import 'home/dart_home.dart';
import 'home/format_home.dart';
import 'home/future_home.dart';
import 'home/layout_home.dart';
import 'home/route_home.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("홈")),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 1),
        children: [
          Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
                child: Text("라우트"),
                onPressed: () {
                  //기존소스
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (_) => FirstPage(),
                  // ));
                  Get.to(RouteHome());
                }),
            RaisedButton(
                child: Text("LayoutHome"),
                onPressed: () {
                  //기존소스
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (_) => FirstPage(),
                  // ));
                  Get.to(LayoutHome());
                }),
            RaisedButton(
                child: Text("FutureHome"),
                onPressed: () {
                  //기존소스
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (_) => FirstPage(),
                  // ));
                  Get.to(FutureHome());
                }),
            RaisedButton(
                child: Text("FormatHome"),
                onPressed: () {
                  Get.to(FormatHome());
                }),
            RaisedButton(
                child: Text("다트기본문법"),
                onPressed: () {
                  Get.to(DartHome());
                }),
            RaisedButton(
                child: Text("Widget"),
                onPressed: () {
                  Get.to(WidgetHome());
                }),
            RaisedButton(
                child: Text("youtube스터디"),
                onPressed: () {
                  Get.to(BasicStateWidgets());
                }),
          ]))
        ],
      ),
    );
  }
}
