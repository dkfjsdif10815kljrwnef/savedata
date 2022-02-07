import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class NextPageArg extends StatelessWidget {
  const NextPageArg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NextPage"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("${Get.arguments.toString()}뒤로 이동"),
              onPressed: () {
                //get방식
                Get.back();
              },
            ),
          ],
        )));
  }
}

class NextPageMap extends StatelessWidget {
  const NextPageMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NextPage"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                  "${Get.arguments['name']} : ${Get.arguments['age']}뒤로 이동"),
              onPressed: () {
                //get방식
                Get.back();
              },
            ),
          ],
        )));
  }
}

class NextPageClass extends StatelessWidget {
  const NextPageClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NextPage"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                  "${(Get.arguments as User).name} : ${(Get.arguments as User).age}뒤로 이동"),
              onPressed: () {
                //get방식
                Get.back();
              },
            ),
          ],
        )));
  }
}

class User {
  String name;
  int age;

  User({this.name, this.age});
}
