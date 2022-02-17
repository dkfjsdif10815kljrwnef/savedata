import 'base000.dart';

class Base002 extends Base000 {
  ///산술연산자
  void arithmetic() {
    ///assert
    ///계산결과가 참인지 검사하는 코드

    //더하기
    assert(2 + 3 == 5);
    // assert('hello' + 'world' == 'hellowrold');
    print('hello' + 'world');
    var testString = 'hello' + 'world';
    print('hellowrold' == testString);

    //빼기
    assert(5 - 2 == 3);

    //곱하기
    assert(3 * 5 == 15);

    //나누기 (return : double타입)
    assert(5 / 2 == 2.5);

    //몫 (return : int타입)
    assert(5 ~/ 2 == 2);

    //나머지 (return : int타입)
    assert(5 % 2 == 1);
  }

  ///증감연산자
  void increment() {
    /// 후위연산 : [식]++, [식]-- (ex: a+,a--)
    /// 전위연산 : ++[식], --[식] (ex: +a,--a)

    var num = 0;

    print(num++);
    print(++num);
  }

  ///비교연산자
  void comparison() {
    ///같다
    assert(2 == 2);

    ///다르다
    assert(2 != 3);

    ///더크다
    assert(3 > 2);

    ///더작다
    assert(2 < 3);

    ///크거나같다
    assert(2 >= 2);

    ///작거나같다
    assert(2 <= 3);
  }

  ///논리연산자
  void logical() {
    ///그리고
    assert(true && true); //true
    assert(true && false); //false
    assert(false && false); //false

    ///또는
    assert(true || true); //true
    assert(true || false); //true
    assert(false || false); //false

    ///같다
    assert(true == true); //true
    assert(true == false); //false
    assert(false == false); //true

    ///다르다
    assert(true != true); //false
    assert(true != false); //true
    assert(false != false); //false
  }
}
