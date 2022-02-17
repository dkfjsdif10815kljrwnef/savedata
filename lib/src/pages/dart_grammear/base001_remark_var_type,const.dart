import 'base000.dart';

class Base001 extends Base000 {
  ///문서주석
  ///이 method나 문서에대한 설명을 쓸 때 사용
  void remart() {
    // 한줄 주석
    /*
    * 여러줄 주석
    */
  }
  void typeVars() {
    int a; //변수를 선언
    a = 1; // 변수를 할당
    double b = 0.1;
    String c = '문자열';
    bool d = true;

    ///숫자타입
    /// num은 int와 double을 포함하기때문에 두개의값을 다 넣을 수 있음.
    int i = 10;
    double y = 10.0;
    num n = 10;
    num m = 10.0;

    ///숫자타입내에서의 자동형변환
    /// int -> num  가능
    /// double -> num 가능
    //double -> int error!
    n = i; // int -> num
    n = m; // double -> num

    ///타입추론형 변수  var
    ///타입을 직접 명시하지않고 대체할 수 있는 타입추론을 지원한다.
    ///아래와같이 사용됨.
    var q = 10;
    var w = 10.0;
    var e = 'h';
    var r = 'h';
    var t = true;
    var u = i < 10;
    var l = e.isEmpty;

    /// 상수 변수를 만드는 방법 ( final, const )
    /// 상수란? 한 번 값을 대입하면 변경할 수 없는 변수
    final String name = "홍길동"; //상수로 선언
    final names2 = "타입을 생략하고 선언하는것도 가능";
    const String name3 = "상수";
    const name4 = "상수";

    /// 차이점은 무엇인가?
    ///  1. fianl > 파일이 실행될때 해당 위치에서 값을 결정
    ///     const > 파일을 컴파일할때(기계어로 번역될때) 값을 결정

    var dateLog1 = DateTime.now(); //프로그램이 실행될 때의 시간이 dateLog1 변수에 담김
    final dateLog2 = DateTime.now(); // 프로그램 실행시의 시간이 dateLog2에 담김
    // const dateLog3 = DateTime.now();     // 컴파일 시엔 DateTime.now()의 값을 담을수가 없으므로 선언할 수 없음
    print(dateLog1);
    print(dateLog2);
    print(dateLog1);
  }

  ///타입검사
  /// 키워드 : is / is!
  void typeCheck() {
    ///is 같은 타입이면 true
    int a = 10;
    if (a is int) {
      print('같은타입');
    }

    ///is! 다른 타입이면 true
    String text = 'hello';
    if (text is! int) {
      print('다른타입');
    }
  }

  ///형변환
  void typeCast() {
    /// 상위 개념으로만 변환가능
    var c = 30.5;
    //int i = c as int; //에러! double의 값이 더 크기때문에 int로 변환 불가
    //Expected a value of type 'int', but got one of type 'double'

    dynamic d = 30.5;
    num n = d as num; //as는 생략할 수 있다.
    print(n);
  }
}
