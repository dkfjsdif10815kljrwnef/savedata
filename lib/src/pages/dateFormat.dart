import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateFormatPage extends StatelessWidget {
  const DateFormatPage({Key key}) : super(key: key);

  void testDateTime() {
    var now = DateTime.now();
    var berlinawallfell = new DateTime.utc(1989, 11, 9);
    var moonLanding = DateTime.parse("1969-07-20 20:18:04Z");

    assert(berlinawallfell.month == 11);
    assert(moonLanding.hour == 20);

    var sixtyDaysFromNow = now.add(new Duration(days: 60));
  }

  void testParse() {
    DateTime createdDate = DateTime.parse('');
    print(createdDate);
  }

  @override
  Widget build(BuildContext context) {
    testParse();
    return Scaffold(
        appBar: AppBar(
          title: Text("DateFormat Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("DateTiem"),
            )
          ],
        )));
  }
}
