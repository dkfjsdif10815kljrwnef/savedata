import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/future.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';
import 'package:savedata/src/pages/textField.dart';
import 'package:savedata/src/pages/textField2.dart';

class FutureHome extends StatelessWidget {
  const FutureHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future 관리 홈")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RaisedButton(
            child: Text("Future 01 "),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(FuturePage());
            }),
        RaisedButton(
            child: Text("Future 02"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(FuturePage());
            }),
      ])),
    );
  }
}
