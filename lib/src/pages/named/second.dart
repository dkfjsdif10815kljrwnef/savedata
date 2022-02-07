import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondNamePage extends StatelessWidget {
  const SecondNamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Named Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //기존방식
                Navigator.of(context).pop();

                //get방식
                //Get.back();
              },
            ),
            RaisedButton(
              child: Text("홈 이동"),
              onPressed: () {
                //기본코드
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => Home()),
                //     (route) => false);
                //Get방식
                // Get.offAll(Home()); //뒤로가기 기록이 없음
                //GetName방식
                Get.offAllNamed("/");
              },
            )
          ],
        )));
  }
}
