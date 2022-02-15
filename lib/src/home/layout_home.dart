import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/layout_listview2.dart';
import 'package:savedata/src/pages/layout_test.dart';
import 'package:savedata/src/pages/listview.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';
import 'package:savedata/src/pages/layout_spacer.dart';
import 'package:savedata/src/pages/textField.dart';
import 'package:savedata/src/pages/textField2.dart';

class LayoutHome extends StatelessWidget {
  const LayoutHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("레이아웃 관리 홈")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RaisedButton(
            child: Text("ListView1"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(ListViewPage());
            }),
        RaisedButton(
            child: Text("ListView2"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(ListView2Page());
            }),
        RaisedButton(
            child: Text("Spacer"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(SpacerPage());
            }),
        RaisedButton(
            child: Text("SpacerTest01Page"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(SpacerTest01Page());
            }),
      ])),
    );
  }
}
