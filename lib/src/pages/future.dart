import 'package:flutter/material.dart';

class FuturePage extends StatelessWidget {
  String printval = 'init';

  Future<String> get() {
    return new Future.delayed(new Duration(seconds: 3), () {
      return '222';
    });
  }

  void returnFuterData() async {
    print('a');
    printval = await get();
    print("returnfutureData  11 11 1 ${printval}");
    print('b');
  }

  @override
  Widget build(BuildContext context) {
    print('1');

    print('-------------------- ${printval} --------------------');
    returnFuterData();
    print(printval);
    print('3');

    return Scaffold(appBar: AppBar(title: Text("홈")), body: Center());
  }
}
