import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key key}) : super(key: key);
  //클래스가 생성될때 바로 사용될 수 있도록
  CountControllerWithGetX controller = Get.put(CountControllerWithGetX());

  Widget button(String id) {
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        controller.increase(id);
        // Get.find<CountControllerWithGetX>().increase(); (위에서 controller로 getput(인스턴스생성)을 했기때문에 getfind를 할 필요가 없어짐
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //인스턴스생성
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("GetX", style: TextStyle(fontSize: 30)),
      GetBuilder<CountControllerWithGetX>(
        id: "first",
        builder: (controller) {
          return Text("${controller.count}", style: TextStyle(fontSize: 50));
        },
      ),
      GetBuilder<CountControllerWithGetX>(
        id: "second",
        builder: (controller) {
          return Text("${controller.count}", style: TextStyle(fontSize: 50));
        },
      ),
      button("first"),
      button("second"),
    ]));
  }
}
