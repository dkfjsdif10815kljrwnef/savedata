import 'dart:async';

import 'package:flutter/material.dart';
import 'package:savedata/src/gaenam/basic/rabbit.dart';
import 'package:savedata/src/gaenam/basic/stateful_sample_widget.dart';
import 'package:savedata/src/gaenam/basic/stateless_sample_widget.dart';

class BasicStateWidgets extends StatefulWidget {
  const BasicStateWidgets({Key key}) : super(key: key);

  @override
  State<BasicStateWidgets> createState() => _BasicStateWidgetsState();
}

class _BasicStateWidgetsState extends State<BasicStateWidgets> {
  int value = 0;
  @override
  void initState() {
    value = 0;
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5),(timer){
      setState((){
        value++;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return  value > 5  ? Container()
      : StatefulSampleWidget(   title : "구멍이없는 박스로 실험하는 자",      rabbit : Rabbit( name: "개남토끼2", state : RabbitState.SLEEP ), value: value ,
      // home: StatelessSampleWidget(   title : "구멍이없는 박스로 실험하는 자",      rabbit : Rabbit(name: "개남토끼1", state : RabbitState.SLEEP )
      );
  }
}

