import 'dart:async';

import 'package:flutter/material.dart';
import 'package:savedata/src/gaenam/basic/rabbit.dart';

class StatelessSampleWidget extends StatelessWidget {

  String title;
  Rabbit rabbit;
  StatelessSampleWidget({this.title,this.rabbit}){
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(child:Center(
        child: Text(rabbit.state.toString(),style: TextStyle(fontSize: 20)) // state값이 변해도 처음에 등록된 값만 변하는걸로 볼 수 있음.
      ))
    );
  }
}
