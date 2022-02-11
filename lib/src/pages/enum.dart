import 'package:flutter/material.dart';

enum DevType { MOBILE, WEB, SERVER }

class EnumPage extends StatelessWidget {
  String name;
  int career;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Enum테스트")), body: Center());
  }
}
