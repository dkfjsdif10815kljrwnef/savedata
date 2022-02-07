import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second.dart';

class FirstNamePage extends StatelessWidget {
  const FirstNamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("first Named Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("다음페이지"),
              onPressed: () {
                Get.offNamed(
                    "/second"); // 현재 페이지의 기록을 지우고 다음페이지로 넘어감. (세컨드페이지에서 뒤로가기를 누르면 홈으로 감)
              },
            )
          ],
        )));
  }
}
