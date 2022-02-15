import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class ListView2Page extends StatelessWidget {
  const ListView2Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Person> people = [
      Person(1, '첫번째', true),
      Person(2, '2번째', false),
      Person(3, '3번째', false),
      Person(4, '4번째', true),
      Person(5, '5번째', false),
      Person(6, '6번째', true)
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("ListView2Page"),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: people.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) return HeaderTitle();
            return PersonTitle(people[index - 1]);
          },
        ));
  }
}
/*
* 1. 명시적 children 넘기기
* 기본생성자를 이용해서 ListView생성
* Scaffold(
        appBar: AppBar(
          title: Text("ListView2Page"),
        ),
        body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          HeaderTitle(),
          PersonTitle(people[0]),
          PersonTitle(people[1]),
          PersonTitle(people[2]),
          PersonTitle(people[3]),
          PersonTitle(people[4]),
          PersonTitle(people[5]),
        ]));

* 2. ListView.builder
* Scaffold(
        appBar: AppBar(
          title: Text("ListView2Page"),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: people.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) return HeaderTitle();
            return PersonTitle(people[index - 1]);
          },
        ));
        *
*3. ListView.separted
* 아이템과 아이템사이에 구분자를 넣을 수 있음
* Scaffold(
        appBar: AppBar(
          title: Text("ListView2Page"),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: people.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) return HeaderTitle();
              return PersonTitle(people[index - 1]);
            },
            separatorBuilder: (context, index) {
              if (index == 0) return SizedBox.shrink();
              return const Divider();
            }));
            *
*  */

class Person {
  int age;
  String name;
  bool isLeftHand;

  Person(this.age, this.name, this.isLeftHand);
}

class PersonTitle extends StatelessWidget {
  final Person _person;
  PersonTitle(this._person);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(_person.name),
      subtitle: Text("${_person.age}세"),
      trailing: PersonHandIcon(_person.isLeftHand),
    );
  }
}

class PersonHandIcon extends StatelessWidget {
  final bool _isLeftHand;
  PersonHandIcon(this._isLeftHand);

  @override
  Widget build(BuildContext context) {
    if (_isLeftHand)
      return Icon(Icons.arrow_left);
    else
      return Icon(Icons.arrow_right);
  }
}

class HeaderTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://t1.daumcdn.net/thumb/R720x0/?fname=https://t1.daumcdn.net/brunch/service/user/1YN0/image/ak-gRe29XA2HXzvSBowU7Tl7LFE.png"),
    );
  }
}
