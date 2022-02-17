import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/listview.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';
import 'package:savedata/src/home/textfield_home.dart';
import 'home/dart_home.dart';
import 'home/format_home.dart';
import 'home/future_home.dart';
import 'home/layout_home.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("홈")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RaisedButton(
            child: Text("라우트"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(FirstPage());
            }),
        RaisedButton(
            child: Text("textField"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(TextHome());
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
      ])),
    );
  }
}
