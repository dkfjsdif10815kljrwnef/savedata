import 'package:flutter/material.dart';

class TextFormFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: Text(appTitle)),
        // StatefulWidget인 MyCustomForm을 body로 설정
        body: MyCustomForm(),
      ),
    );
  }
}

// 커스텀 폼 위젯을 정의
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// 펌 위젯에 상응하는 상태 클래스
class MyCustomFormState extends State<MyCustomForm> {
  // 폼에 부여할 수 있는 유니크한 글로벌 키를 생성한다.
  // MyCustomFormState의 키가 아닌 FormState의 키를 생성해야함을 유의
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // 폼 위젯 생성
    // 폼 위젯은 컨테이너처럼 동작하면서, 복수의 폼 필드를 그룹화하고 적합성을 확인함
    return Form(
      // 필드에 부여했단 글러벌키를 폼에 할당함
      key: _formKey,
      child: Column(
        // 컬럼내 위젯들을 왼쪽부터 정렬함
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // 텍스트폼필드 추가
          TextFormField(
            // 텍스트폼필드에 validator 추가
            validator: (value) {
              // 입력값이 없으면 메시지 출력
              if (value.isEmpty) {
                return 'Enter some text';
              } else
                return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // 텍스트폼필드의 상태가 적함하는
                if (_formKey.currentState.validate()) {
                  // 스낵바를 통해 메시지 출력
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              // 버튼에 텍스트 부여
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
