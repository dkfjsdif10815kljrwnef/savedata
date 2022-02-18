import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';
import 'dart:math';

class Base009 implements Base000 {
  String practiceTitle = 'Base009';

  void nullCheck01() {
    String name = null;
    //name.length 는 오류가 발생함. null이라 길이를 확인할수없기때문에..

    //if로 처리하기
    if (name != null) print(name.length);

    // ?. 연산자로 체크하기
    print(name?.length); // name객체가 null일때, 오류가 아닌 null객체를 반환함.

    // ?? 연산자로 체크하기
    print(name?.length ?? 0); // name이 null이면 0 출력
  }

  @override
  void callBase() {
    // printTest('', () {});
    nullCheck01();
  }
}
