import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';

class RouteHome extends StatelessWidget {
  const RouteHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("라우트 관리 홈")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RaisedButton(
            child: Text("일반적인 라우트"),
            onPressed: () {
              //기존소스
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) => FirstPage(),
              // ));
              Get.to(FirstPage());
            }),
        RaisedButton(
            child: Text("named 라우트"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).pushNamed("/first");
              Get.toNamed("/first");
            }),
        RaisedButton(
            child: Text("nArguments 전달"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).pushNamed("/first");
              Get.toNamed("/nextarg", arguments: "개남"); //값을 넘기는 방법
              // Get.to(FirstPage(), arguments: "개남");
            }),
        RaisedButton(
            child: Text("Arguments map 전달"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).pushNamed("/first");
              Get.toNamed("/nextmap",
                  arguments: {"name": "개남", "age": "22"}); //값을 넘기는 방법
              // Get.to(FirstPage(), arguments: "개남");
            }),
        RaisedButton(
            child: Text("Arguments class 전달"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).pushNamed("/first");
              Get.toNamed("/nextclass",
                  arguments: User(name: "클래스이름", age: 333)); //값을 넘기는 방법
              // Get.to(FirstPage(), arguments: "개남");
            }),
        RaisedButton(
            child: Text("동적 url"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).pushNamed("/first");
              Get.toNamed("/user/28357"); //값을 넘기는 방법
              // Get.to(FirstPage(), arguments: "개남");
            }),
        RaisedButton(
            child: Text("단순상태관리"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).spushNamed("/first");
              Get.to(SimpleStateManagePage()); //값을 넘기는 방법
              // Get.to(FirstPage(), arguments: "개남");S
            }),
        RaisedButton(
            child: Text("반응형상태관리"),
            onPressed: () {
              //기존소스
              //Navigator.of(context).spushNamed("/first");
              Get.to(ReactiveStateManagePage()); //값을 넘기는 방법
              // Get.to(FirstPage(), arguments: "개남");S
            })
      ])),
    );
  }
}
