import 'package:flutter/material.dart';

class TextFieldPage2 extends StatelessWidget {
  TextEditingController _tec = TextEditingController();
  TextEditingController _tec2 = TextEditingController();
  DateTime _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              TextField(
                  onTap: () {
                    Future<DateTime> selectedDate = showDatePicker(
                      context: context,
                      initialDate: DateTime.now(), // 초깃값
                      firstDate: DateTime(2018), // 시작일
                      lastDate: DateTime(2030), // 마지막일
                      builder: (BuildContext context, Widget child) {
                        return Theme(
                          data: ThemeData.dark(), // 다크테마
                          child: child,
                        );
                      },
                    );

                    selectedDate.then((dateTime) {
                      // setState(() {
                      //   _selectedTime = dateTime;
                      // });
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Hint',
                  ))
            ])));
  }
}
