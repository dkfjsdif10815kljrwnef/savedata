import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  Widget buildBox(Color color) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SpacerPage 테스트")),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0, child: Text('CrossAxisAlignment.start')),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0, child: Text('CrossAxisAlignment.end')),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              buildBox(Colors.red),
              buildBox(Colors.green),
              buildBox(Colors.blue),
            ]),
            SizedBox(height: 20.0, child: Text('CrossAxisAlignment.center')),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              buildBox(Colors.red),
              buildBox(Colors.green),
              buildBox(Colors.blue),
            ]),
            SizedBox(
                height: 20.0, child: Text('CrossAxisAlignment.spaceAround')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
                height: 20.0, child: Text('CrossAxisAlignment.spaceBetween')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
                height: 20.0, child: Text('CrossAxisAlignment.spaceEvenly')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
                // height: 20.0, child: Text('CrossAxisAlignment.spaceEvenly')
                ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox(Colors.red),
                Expanded(child: Container()),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0, child: Text('Spacer')),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox(Colors.red),
                Spacer(),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0, child: Text('Spacer flex')),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox(Colors.red),
                Spacer(flex: 2),
                buildBox(Colors.green),
                Spacer(flex: 1),
                buildBox(Colors.blue),
              ],
            ),
          ],
        )));
  }
}
