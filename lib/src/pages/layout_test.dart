import 'package:flutter/material.dart';

class SpacerTest01Page extends StatelessWidget {
  GlobalKey _viewKey = GlobalKey();

  Widget buildBox(Color color) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }

  _getSize() {
    RenderBox _viewBox = _viewKey.currentContext.findRenderObject();
    Offset offset = _viewBox.localToGlobal(Offset.zero);
  }

  @override
  Widget build(BuildContext context) {
    final getsized = _getSize();

    return Scaffold(
        appBar: AppBar(title: Text("SpacerPage 테스트")),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                    child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ))),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Expanded(child: SizedBox()),
              buildBox(Colors.red),
              buildBox(Colors.blue),
              SizedBox(
                width: getsized.width,
                height: getsized.height,
              )
            ]),
            Row(
              children: [
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.red,
                )
              ],
            ),
          ],
        )));
  }
}
