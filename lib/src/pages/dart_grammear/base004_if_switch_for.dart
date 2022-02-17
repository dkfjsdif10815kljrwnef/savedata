import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';

class Base004 implements Base000 {
  String practiceTitle = 'base004';

  //분기
  void callIfElse() {
    String text = 'ifElse';

    if (text is int) {
      print('정수');
    } else if (text is double) {
      print('실수');
    } else {
      print('정수 실수도 아님');
    }

    /// 컬렉션 내부에 if문이나 for문을 사용할 수 있음.
    /// 단 {}는 사용할수x
    print('컬렉션 안에 if문 사용하기 테스트 ');
    bool promoActive = true;
    List arr = [];
    if (promoActive) {
      arr = [1, 2, 3, 4, 5, 6, if (promoActive) 'd'];
    } else {
      arr = [1, 2];
    }
    print(arr);
    print(['a', 'b', 'c', if (promoActive) 'd']);
  }

  //삼항 연산
  void callTernary() {
    bool isRainy = true;
    var todo = isRainy ? 'true 데이터' : 'false데이터';
    print(todo);
  }
  // Switch문
  //열거타입(enum)과 함께 사용되면 모든 케이스를 검사해야하는 강제성이 생긴다는데 잘 모르겟는디..?
  //조건에 맞는 값이 여러개 일 경우

  void callSwitch() {
    var status = Status.d;
    switch (status) {
      case Status.a:
        print('a' + '와 일치');
        break;
      case Status.b:
        print('b' + '와 일치');
        break;
      case Status.c:
        print('c' + '와 일치');
        break;
      case Status.d:
        print('d' + '와 일치');
        break;
    }
  }

  void callFor() {
    var item = ['짜장', '라면', '볶음밥'];
    for (var i = 0; i < item.length; i++) {
      print(item[i]);
    }
    print('컬렉션 안에 for문 사용하기 테스트 ');
    var listOfInts = [1, 2, 3];
    var lsitOfStrings = ['#0', for (var i in listOfInts) '#$i'];

    print(lsitOfStrings);

    //list내용물 print하는법
    lsitOfStrings.forEach(print);
    print('end');
  }

  @override
  void callBase() {
    //  printTest('', () {});
    printTest('분기, if-else문 ', () {
      callIfElse();
    });
    printTest('삼항연산자 true ? a : b ', () {
      callTernary();
    });
    printTest('분기문 : switch case ', () {
      callSwitch();
    });
    printTest('반복문 : For ', () {
      callFor();
    });
  }
}

//class밖에 선언
enum Status { a, b, c, d }
