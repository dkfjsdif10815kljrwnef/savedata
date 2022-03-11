import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/dependencys/dependency_controller.dart';
import 'package:savedata/src/pages/dependencys/get_lazyPut.dart';
import 'package:savedata/src/pages/dependencys/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("의존성 주입")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
            child: Text("Getput"),
            onPressed: () {
              // 페이지로 보내주면서 컨트롤러를 주입하는 것 : 바인딩
              Get.to(
                GetPut(),
                binding: BindingsBuilder(() {
                  Get.put(DependencyController());
                }),
              );
            },
          ),
          RaisedButton(
            child: Text("Get.lazyPut"),
            onPressed: () {
              Get.to(
                GetLazyPut(),
                binding: BindingsBuilder(() {
                  Get.lazyPut<DependencyController>(
                      //put과 다르게 페이지를 띄울때 바로 메모리에 올리는 것이 아니라, 해당 컨트롤러를 호출할때 메모리에 올리게 됨
                      () => DependencyController());
                }),
              );
            },
          ),
          RaisedButton(
            child: Text("Get.putAsync"), //비동기처리
            onPressed: () {
              Get.to(
                GetPut(),
                binding: BindingsBuilder(() {
                  Get.putAsync<DependencyController>(
                      //put과 다르게 페이지를 띄울때 바로 메모리에 올리는 것이 아니라, 해당 컨트롤러를 호출할때 메모리에 올리게 됨
                      //페이지를 띄운뒤에 컨트롤러를 호출해야할때 사용함
                      () async {
                    //test를위해서 딜레이추가
                    await Future.delayed(Duration(seconds: 5));
                    return DependencyController();
                  });
                }),
              );
            },
          ),

          /// 인스턴스가 올려져있어도 매번 생성함
          // RaisedButton(
          //   child: Text("get.create"),
          //   onPressed: () {
          //     Get.to(
          //       GetPut(),
          //       binding: BindingsBuilder(() {
          //         Get.create<DependencyController>(() => DependencyController());
          //       }),
          //     );
          //   },
          // ),
        ])));
  }
}
