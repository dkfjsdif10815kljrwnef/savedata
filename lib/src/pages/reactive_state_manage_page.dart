import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:savedata/src/pages/controller/count_controller_with_getx.dart';
import 'package:savedata/src/pages/controller/count_controller_with_provider.dart';
import 'package:savedata/src/pages/state/with_getx.dart';
import 'package:savedata/src/pages/state/with_provider.dart';

import 'controller/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    // obx가 컨트롤러에서 변화를 감지하면 변경됨. 그래서 감지할수있도록 뭔가 넣어줘얗마...

    return Scaffold(
        appBar: AppBar(
          title: Text("반응형상태관리"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 30)),
            Obx(() => Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: TextStyle(fontSize: 50))),
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            RaisedButton(
              child: Text("-", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().my();
              },
            )
          ],
        )));
  }
}
