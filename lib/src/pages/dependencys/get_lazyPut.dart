import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/dependencys/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: RaisedButton(
          onPressed: () {
            Get.find<DependencyController>().increas();
          },
        ));
  }
}
