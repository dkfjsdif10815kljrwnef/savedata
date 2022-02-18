import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';

class Base005 implements Base000 {
  String practiceTitle = 'Base005';

  void baseClass() {
    // Person타입의 객체를 인스턴스화
    var person = new Person();
    var person2 = Person(); // new키워드 생략도 가능

    //생성자에 아무값도 넣지않고 인스턴스를 생성하면 각 프로퍼티에 null값으로 객체가 생성됨

    //변수명뒤에 .연산자로 생성한 객체의 프로퍼티에 접근 가능.
    print(person.name); //null
    print('${person.age}살'); //null
  }

  void baseUseMethod() {
    var person = Person();
    person.age = 10;
    //프로퍼티와 동일하게 .연산자로 접근가능
    person.addOneYear();
    print(person.age);

    //프라이벳 변수는 같은 파일안에서만 접근 가능함. 보통은 이렇게 접근할수X
    //프라이벳 변수에 접근하기 위해서는 getter setter를 사용함
    person._privateVal = '프라이벳';
    print('프라이벳변수직접호출');
    print(person._privateVal);
  }

  //생성자 사용법
  void constructor() {
    var person = Person2();
    var person2 = Person2(name: '홍길동');
    print('name:${person.name} age:${person._age} ');
    print('name:${person2.name} age:${person2._age} ');
  }

  //게터세터 사용법
  void callGetSet() {
    var person = Person2();
    print(person.age);
  }

  @override
  void callBase() {
    // printTest('', () {});
    printTest('class 객체인스턴스 생성 테스트 ', () {
      baseClass();
    });
    printTest('연산자 접근 테스트', () {
      baseUseMethod();
    });
    printTest('생성자 사용 테스트', () {
      constructor();
    });
    printTest('게터세터 사용 테스트', () {
      callGetSet();
    });
    printTest('상속클래스 테스트', () {
      SuperHero().run();
    });
    printTest('추상클래스 테스트', () {
      Goblin().attack();
      Bat().attack();
    });
    printTest('상속 믹스인 테스트', () {
      GoblinMix().attack();
      GoblinMix().run();
    });
    printTest('enum 테스트', () {
      var authStatus = Status.logout;

      switch (authStatus) {
        case Status.login:
          print('로그인');
          break;
        case Status.logout:
          print('로그아웃');
          break;
      }
    });
  }
}

class Person {
  String name;
  int age;
  String _privateVal; //private변수라서 다른파일에서 접근 불가능

  //
  void addOneYear() {
    age++;
  }
}

class Person2 {
  String name;
  int _age;

  Person2({this.name});

  int get age => _age;
  set age(int val) => _age;
}

//상속 클래스
class Hero {
  String name = '영웅';
  void run() {
    print('Hero - run');
  }
}

class SuperHero extends Hero {
  @override
  void run() {
    super.run(); //부모의 run()실행
    this.fly(); //추가로 수정한 fly라는 함수 실행
  }

  void fly() {
    print('SuperHero- fly');
  }
}

//추상클래스
//추상메서드( 선언만되고 정의가없는 메서드) 를 포함한 클래스
abstract class Monster {
  void attack();
}

// 추상클래스를 implements받는 경우엔 반드시 추상메서드를 재정의해야함.
class Goblin implements Monster {
  @override
  void attack() {
    print('고블린어택');
  }
}

class Bat implements Monster {
  @override
  void attack() {
    print('할퀴기');
  }
}

//믹스인
//상속하지않고 다른 클래스의 기능을 가져오거나 오버라이드 할 수 있음.
class GoblinMix extends Monster with Hero {
  @override
  void attack() {
    print('고블린어택');
    run();
  }
}

//열거타입
enum Status { login, logout }
