import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/pages/ISD_Widget/is_progressDialog.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';
import 'package:savedata/src/pages/textField.dart';
import 'package:savedata/src/pages/textField2.dart';
import 'package:savedata/src/pages/textFieldInRow.dart';
import 'package:savedata/src/pages/textFormField.dart';

class DialogHome extends StatelessWidget {
  const DialogHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dailog 관리 홈")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
                child: Text("ISDialog"),
                onPressed: () {
                  ISProgressDialog(context).show(status:'isDialog');

                  // Future.delayed(const Duration(microseconds: 500000),(){
                  //   ISProgressDialog(context).dismiss();
                  // });



                }),
          ])),
    );
  }
}
