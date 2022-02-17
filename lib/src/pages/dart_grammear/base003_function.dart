import 'package:savedata/src/home/dart_home.dart';

import 'base000.dart';

class Base003 {
  String practiceTitle = 'base003';

  /// 함수는 코드의 묶음 단위
  ///  함수명  : f
  ///  매개변수 :  int타입의 x
  ///  반환값 :  int타입
  ///  인수 : x에 들어가는 값
  int f(int x) {
    return x + 10;
  }

  //매개변수가 복수
  int f2(int x, int z) {
    return x + z + 10;
  }

  //매개변수가 없음
  String str() {
    return '텍스트';
  }

  //반환값이 없는경우
  void f3(int x) {
    print(x);
  }

  // 반환타입 생략가능
  void yf4(String greet) {
    //반환타입 기술
    print('hello $greet');
  }

  nf4(String greet) {
    //반환타입 생략
    print('hello $greet');
  }

  void printFunction() {
    //반환값이 void인 대표함수
    //원하는 형태의 메세지 출력할 때 사용
    String _name = '홍길동';
    int _age = 20;
    printTest('${practiceTitle} : printFunction 프린트함수 테스트', () {
      print(_name);
      print('$_name은 ${_age}살입니다.');
      print('$_name의 글자수는 ${_name.length}입니다.');
    });
  }

  bool classInFun(int number) {
    return number % 2 == 0;
  }

  //람다식 (classInFun과 같은 함수)
  bool ramdaFun(number) => number % 2 == 0;

  static bool classStaticFun(int number) {
    return number % 2 == 0;
  }

  // 선택매개변수 ( 이름있는 매개변수 )
  // 함수 정의에서 {} 감싼개변수
  // 선택적으로 사용할 수 있다.
  // 선택매개변수만 기본값을 지정할 수 있다 ( int base=10 ) 같은 방식으로 할당
  void something({String name, int ages, int base = 10}) {
    print(
        'name data : ${name ?? "names_null"} / age data : ${ages ?? "age_null"} ');
  }

  // 필수,선택매개변수 ( 섞어서 사용할경우 )
  // 함수 정의에서 {} 감싸지 않은 부분은 필수, 감싼부분은 선택

  void something2(String name, {int ages, int base = 10}) {
    print(
        'name data : ${name ?? "names_null"} / age data : ${ages ?? "age_null"} ');
  }

  void functionsTest() {
    var result = f(10); //f함수에 10이라는 인수를 전달, 결과를 result변수에 대입했다.
    var result2 = f2(10, 20);
    var result3 = str();
    f3(111);
    printFunction();

    //타 클래스 생성, 메서드사용
    printTest('타 클래스 생성, 메서드사용', () {
      funPerson person = funPerson("obj", age: 39); //생성자로 생성
      person.greeting();
    });

    printTest('익명함수 사용', () {
      print('nullData');
    });
    printTest('람다식함수 사용', () {
      print(ramdaFun(1));
    });
    printTest('선택 매개변수 사용', () {
      something(name: '선택매개변수Str', ages: 4545);
    });

    printTest('필수, 선택 매개변수 복합 사용', () {
      //  something2(name: '선택매개변수Str', ages: 4545);  // error@!!
      something2('Str필수1', ages: 4545);

      //  something2(ages: 4545); // error@!!
      something2('Str필수2');
      //  something2(); //error!
    });
  }
} //class close

class funPerson {
  String name;
  int age;
  funPerson(this.name, {this.age});
  void greeting() {
    print("저는 $name입니다");
  }
}

// class밖에 작성하는 함수를 최상위 함수라고 함
// 어디에서나 호출 가능
bool classOutFun(int number) {
  return number % 2 == 0;
}
