import 'dart:async';

import 'package:flutter/material.dart';
import 'package:savedata/src/gaenam/basic/rabbit.dart';

class StatefulSampleWidget extends StatefulWidget {
  String title;
  Rabbit rabbit;
  int value;

  StatefulSampleWidget({this.title,this.rabbit,this.value}); //생성자

  @override
  State<StatefulSampleWidget> createState() => _StatefulSampleWidgetState();//최초실행1 - 상태를 생성하는 것.
}

class _StatefulSampleWidgetState extends State<StatefulSampleWidget> {
  bool stateBool = false;

  ///
  ///위젯에서 사용된 컨트롤러들 을 dispose시킬 때 사용
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }
  ///2번째실행
  ///state를 초기화한다, 초기설정을 한다.
  ///생성이후 최초 한번만 실행이 된다.
  ///context 접근 불가(생성되어있지않음)
  @override
  void initState() {
    //실행2
        super.initState();
        stateBool = false;
        print('init state~!!');

      // setState((){ //값이 변하는 부분에 넣어줘야함...
      //   Timer.periodic(Duration(seconds: 5),(timer){
      //
      //     int index = timer.tick%4;
      //     print(index); //1,2,3,0 반복
      //     switch(index){
      //       case 0: widget.rabbit.updateState(RabbitState.SLEEP);
      //       break;
      //       case 1: widget.rabbit.updateState(RabbitState.WALK);
      //       break;
      //       case 2: widget.rabbit.updateState(RabbitState.RUN);
      //       break;
      //       case 3: widget.rabbit.updateState(RabbitState.EAT);
      //       break;
      //     }
      //     print(widget.rabbit.state);
      //   });
      // });

  }
  /// 부모 (State)에 정의되어있기때문에 build까지만 기본템플릿으로 나옴
  /// 최초생성때 한 번 호출
  /// context접근 가능
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies ~!!');

  }

  ///context가 mount됐을때만 사용할 수 있는 함수
  ///앱이나 위젯을 연결하면서 꼬이는 경우도 간혹 있기도 하는데 그걸 방지하기위해 마운트 여부를 체크하는 편이 안전하다.
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    if(mounted) {
      super.setState(fn);
      print("setState");
    }else{
      print('no Mounted');
    }
  }

  ///oldWidget을 받고있다.
  ///이전상태의 나자신..? 이전과 비교해서 변경됐는지, 변경됐으면 추가적인 로직을 추가할 수 있게 해줌..
  ///
  @override
  void didUpdateWidget(covariant StatefulSampleWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('oldWidget : ${oldWidget.value }  != this.value : ${widget.value}');
    if(oldWidget.value != widget.value){
      print("oldWidget");
    }
  }
  ///UI를 구성하는 부분
  /// initstate didchange 이후
  /// 상태변화가 있을 때 호출
  /// 부모에서 업데이트 발생했을때 라이프사이클중 하나를 호출되면 또 호출도ㅚ기도 함
  /// 가장 빈번하게 호출됨.
  /// 계산하는 퍼포먼스가 build에 많이 추가되면 앱의 기능이 많이 저하됨.
  @override
  Widget build(BuildContext context) {

    print('build ~!!');

    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column( children:[Container(child:Center(
            child: Text(widget.rabbit.state.toString(),style: TextStyle(fontSize: 20)) // state값이 변해도 처음에 등록된 값만 변하는걸로 볼 수 있음.
        ))
          ,ElevatedButton(
            child: Text("stateTest"),
            onPressed:(){
              setState((){
              });
            },
          )
        ]),
      floatingActionButton: FloatingActionButton(
        child: Text("button"),
        onPressed:(){
        setState((){
      });
      },
      ),
    );
  }


}
