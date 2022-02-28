import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/home/WidgetHomes/textfield_home.dart';
import 'package:savedata/src/home/widget_home.dart';
import 'package:savedata/src/pages/dart_grammear/base000.dart';
import 'package:savedata/src/pages/dart_grammear/base001_remark_var_type,const.dart';
import 'package:savedata/src/pages/dart_grammear/base002_assert_operate.dart';
import 'package:savedata/src/pages/dart_grammear/base003_function.dart';
import 'package:savedata/src/pages/dart_grammear/base004_if_switch_for.dart';
import 'package:savedata/src/pages/dart_grammear/base005_class.dart';
import 'package:savedata/src/pages/dart_grammear/base006_List_map_set.dart';
import 'package:savedata/src/pages/dart_grammear/base007.dart';
import 'package:savedata/src/pages/dart_grammear/base008.dart';
import 'package:savedata/src/pages/dart_grammear/base009_null.dart';
import 'package:savedata/src/pages/dateFormat.dart';
import 'package:savedata/src/pages/first.dart';
import 'package:savedata/src/pages/future.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/reactive_state_manage_page.dart';
import 'package:savedata/src/pages/simple_state_manage_page.dart';
import 'package:savedata/src/pages/textField.dart';
import 'package:savedata/src/pages/textField2.dart';

class DataTableHome extends StatelessWidget {
  const DataTableHome({Key key}) : super(key: key);

  Widget getLeftRows() {
    return Row(
      children: [getBtn(title: 'DataTable1')],
    );
  }

  Widget getRightRows() {
    return Row(
      children: [getBtn(title: 'DataTable2')],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Widget 관리 홈")),
        body: Center(
          child: ListView(children: [
            Row(children: [getLeftRows(), getRightRows()])
          ]),
        ));
  }
}
