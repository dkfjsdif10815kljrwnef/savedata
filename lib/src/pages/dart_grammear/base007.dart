import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';
import 'dart:math';

class Base007 implements Base000 {
  String practiceTitle = 'Base007';

  ///일급 객체
  ///다트는 함수를 값으로 취급할 수 있다.
  void funtionInvar() {
    var f = greeting; //함수로 포인터?처럼 쓰는건가봄.. ㄷ
    f('hello');
  }

  void greeting(String text) {
    print(text);
  }

  /// 인수로 Function이라는 특수한 클래스의 인스턴스를 받는 함수
  ///
  void something(Function(int i) f) {
    f(10); //내부에서 10이 매개변수로 전달된 f() 함수를 실행함
    // f함수는 익명함수 (something을 호출할때 들어오는 익명함수가 실행되는 것)
  }

  void myPrintFunction(int i) {
    print('내가만든 함수에서 출력한$i');
  }

  void callFor() {
    final items = [1, 2, 3, 4, 5];

    //외부 반복하여 리스트내용 출력
    for (var i = 0; i < items.length; i++) {
      print(items[i]);
    }

    //내부반복
    /// forEach()함수는 (E element){} 형태의 함수를 인수로 받음
    items.forEach(print);
    //윗코드를 풀어서 적은 표현
    items.forEach((e) {
      print(e);
    });
    //람다식표현
    items.forEach((e) => print(e)); // e는 items의 각 요소가 내부적으로 반복하면서 하나씩 들어올 인수
    // 그 인수e를 print함수에 전달하는 의미
  }

  void callWhere() {
    final items = [1, 2, 3, 4, 5];
    //짝수만 출력하고싶을때 사용하는 함수
    for (var i = 0; i < items.length; i++) {
      if (items[i] % 2 == 0) {
        print(items[i]); //2,4
      }
    }
    print('where함수로-------');
    //위와 동일한 함수를 where함수로 작성
    items.where((e) => e % 2 == 0).forEach((element) {
      print(element);
    });
  }

  // .map() 반복되는 값을 다른형태로 변환하는 방법을 제공하는 함수
  void callMap() {
    //짝수를 찾아 '숫자'라는 글자를 붙여 문자열 형태로 출력하는 예제
    final items = [1, 2, 3, 4, 5];
    //기존
    for (var i = 0; i < items.length; i++) {
      if (items[i] % 2 == 0) {
        print('숫자 ${items[i]}');
      }
    }
    //.map
    items.where((e) => e % 2 == 0).map((e) => '숫자 $e').forEach(print);

    ///forEach와 map의 차이점은 반환데이터의 유무이다
    ///둘다 배열을돌면서 함수를 수행하고, 그 결과를 map은 새로운 배열로 return하지만 forEach는 항상 undefined을 리턴한다.
  }

  void callToList() {
    final items = [1, 2, 3, 4, 5];
    final result = [];

    //결과를 리스트형태로 변환해야할때
    items.forEach((e) {
      if (e % 2 == 0) {
        result.add(e);
      }
    });
    //위와 같은 내용을 toList로 작업할때
    final result2 = items.where((e) => e % 2 == 0).toList();

    print(result2);
  }

  //중복을 제거한 리스트
  void callToSet() {
    final items = [1, 2, 2, 2, 2, 3, 4, 5];
    final result = [];

    for (var i = 0; i < items.length; i++) {
      if (items[i] % 2 == 0) {
        result.add(items[i]);
      }
    }
    print(result); //2,2,4

    final result2 = items.where((e) => e % 2 == 0).toList();
    print(result2); //2,2,4

    var result3 = [];
    var temp = <int>{}; //Set<int> temp 와 같은거임
    for (var i = 0; i < items.length; i++) {
      if (items[i] % 2 == 0) {
        temp.add(items[i]);
      }
    }
    result3 = temp.toList();
    print(result3);
    print('------------------');
    final result4 =
        items.where((element) => element % 2 == 0).toSet().toList(); //2,4
  }

  //any
  //리스트에
  void callAny() {
    final items = [1, 2, 3, 4, 4, 5];
    var result = false;
    for (var i = 0; i < items.length; i++) {
      if (items[i] % 2 == 0) {
        result = true;
        break;
      }
    }
    result = false;

    print(items.any((element) => element % 2 == 0));
  }

  //반복요소를 줄여가며 결과를 만들 때 사용하는 함수.
  void reduce() {
    //리스트에서 최댓값을 구할 때 순차적으로 비교하는 로직
    final items = [1, 2, 3, 4, 5];

    var maxResult = items[0];
    for (var i = 1; i < items.length; i++) {
      maxResult = max(items[i], maxResult);
    }
    print(maxResult); //5
    //reduce()함수는 연산결과를 다음 요소와 연산(마지막요소까지 이 방식으로 사용)
    //[타입]([타입]value,[타입] element)형태로 정의해야함.
    //항상 두 인수를 받고, 반환값은 인수와 같은 타입이어야 함.
    print(items.reduce((value, element) => max(value, element))); //5
    print(items.reduce(max));
  }

  @override
  void callBase() {
    // printTest('', () {});
    printTest('일급객체', () {
      funtionInvar();
    });
    printTest('다른 함수의 인수로 함수를 전달 ', () {
      something((value) {
        print(value);
      });
    });
    printTest('함수형 프로그래밍 확인', () {
      something(myPrintFunction);
      something((i) => myPrintFunction(i));
      something((i) => print(i));
      something(print);
    });
  }
}
