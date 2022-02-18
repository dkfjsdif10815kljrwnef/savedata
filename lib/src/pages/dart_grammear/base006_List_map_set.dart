import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';

class Base006 implements Base000 {
  String practiceTitle = 'Base006';

  //List
  //같은 타입의 자료를 여러개 담을 수 있고 특정 인덱스로 접근 가능
  void baseList() {
    List<String> items = ['짜장', '라면', '볶음밥'];
    var items2 = ['짜장', '라면', '볶음밥']; //타입추론도 가능

    //여러타입을 리스트에 넣을 경우
    List<dynamic> items3 = [0, 1, '볶음밥'];
    var items4 = [0, 1, '볶음밥']; //타입추론으로도 가능

    items[0] = '떡볶이'; //인덱스는 0부터 시작
    print(items.length); // 길이 3

    for (var i = 0; i < items.length; i++) {
      print(items[i]);
    }

    //스프레드연산자 ( ... )
    // 컬렉션을 펼쳐주는 연산자
    // 다른 컬렉션안에 컬렉션을 삽입할 때 사용
    var sprItems = ['스프레드연산자테스트', ...items, '스프레드마지막값'];
    // 스프레드연산자를 set
  }

  void baseMap() {
    //Map<String,String> cityMap = { }
    var cityMap = {'한국': '부산', '일본': '도쿄', '중국': '북경'};

    cityMap['한국'] = '서울';

    print(cityMap.length); //
    print(cityMap['중국']);
    print(cityMap['미국']);
  }

  /// Set 객체
  ///집합자료를 표현하는 자료구조 컬렉션
  /// add() , remove() , 로 집합에 추가 또는 삭제
  /// contains() 찾는 자료가 집합에 있는지 없는지 return bool (있는지없는지확인할때사용)
  /// 값없이 {}라고쓰면 Map으로 인식함
  void baseSet() {
    Set<String> basicSet = {};
    var mySet = <String>{}; // 타입 : Set<String>
    var myMap = {}; // 타입 : Map<dynamic,dynamic>
  }

  @override
  void callBase() {
    // printTest('', () {});
    printTest('리스트 컬렉션과 스프레드를 이용한 객체 확인 ', () {
      baseList();
    });
  }
}
