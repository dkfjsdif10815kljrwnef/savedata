import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:savedata/src/pages/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key key}) : super(key: key);

  Widget _button(ontext) {
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Provider.of<CountControllerWithProvider>(ontext, listen: false)
            .increase();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("provider", style: TextStyle(fontSize: 30)),
      Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
        return Text("${snapshot.count}", style: TextStyle(fontSize: 50));
      }),
      //
      _button(context),
    ]));
  }
}
