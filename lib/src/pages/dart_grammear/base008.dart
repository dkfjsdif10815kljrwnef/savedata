import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';
import 'dart:math';

class Base008 implements Base000 {
  String practiceTitle = 'Base008';

  void cascade() {
    ///계단식 표기법 연산자를 사용하면 동일 객체에서 일련의 작업을 수행할수 있다.
    final items = [1, 2, 3, 4, 5];

    //6을 추가하고 2를 제거하는  코드
    var result = items;
    result.add(6);
    result.remove(2);
    print(result);

    //계단식표기법으로 쓸 때엔
    var result2 = items;
    result2
      ..add(6)
      ..remove(2);
    print(result2);
  }

  void collection() {
    var items = [1, 2, 3, 4, 5, if (true) 6];
    printTest('컬렉션내부에서 if문 사용하기 ', () {
      print(items);
    });

    printTest('컬렉션내부에서 for문 사용하기 ', () {
      var listOfStrings = [for (var i in items) '#$i'];
      print(listOfStrings);
    });
  }

  @override
  void callBase() {
    // printTest('', () {});
  }
}
