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
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGrid extends StatelessWidget {
  const PlutoGrid({Key key}) : super(key: key);

  Widget getWidget() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Widget 관리 홈")),
        body: Center(
          child: ListView(children: [
            getWidget(),
          ]),
        ));
  }
}

// class PlutoGridExamplePage extends StatefulWidget {
//   const PlutoGridExamplePage({Key key}) : super(key: key);
//
//   @override
//   State<PlutoGridExamplePage> createState() => _PlutoGridExamplePageState();
// }

// class _PlutoGridExamplePageState extends State<PlutoGridExamplePage> {
//   final List<PlutoColumn> columns = <PlutoColumn>[
//     PlutoColumn(
//       title: 'Id',
//       field: 'id',
//       type: PlutoColumnType.text(),
//     ),
//     PlutoColumn(
//       title: 'Name',
//       field: 'name',
//       type: PlutoColumnType.text(),
//     ),
//     PlutoColumn(
//       title: 'Age',
//       field: 'age',
//       type: PlutoColumnType.number(),
//     ),
//     PlutoColumn(
//       title: 'Role',
//       field: 'role',
//       type: PlutoColumnType.select(<String>[
//         'Programmer',
//         'Designer',
//         'Owner',
//       ]),
//     ),
//     PlutoColumn(
//       title: 'Joined',
//       field: 'joined',
//       type: PlutoColumnType.date(),
//     ),
//     PlutoColumn(
//       title: 'Working time',
//       field: 'working_time',
//       type: PlutoColumnType.time(),
//     ),
//   ];
//
//   final List<PlutoRow> rows = [
//     PlutoRow(
//       cells: {
//         'id': PlutoCell(value: 'user1'),
//         'name': PlutoCell(value: 'Mike'),
//         'age': PlutoCell(value: 20),
//         'role': PlutoCell(value: 'Programmer'),
//         'joined': PlutoCell(value: '2021-01-01'),
//         'working_time': PlutoCell(value: '09:00'),
//       },
//     ),
//     PlutoRow(
//       cells: {
//         'id': PlutoCell(value: 'user2'),
//         'name': PlutoCell(value: 'Jack'),
//         'age': PlutoCell(value: 25),
//         'role': PlutoCell(value: 'Designer'),
//         'joined': PlutoCell(value: '2021-02-01'),
//         'working_time': PlutoCell(value: '10:00'),
//       },
//     ),
//     PlutoRow(
//       cells: {
//         'id': PlutoCell(value: 'user3'),
//         'name': PlutoCell(value: 'Suzi'),
//         'age': PlutoCell(value: 40),
//         'role': PlutoCell(value: 'Owner'),
//         'joined': PlutoCell(value: '2021-03-01'),
//         'working_time': PlutoCell(value: '11:00'),
//       },
//     ),
//   ];
//
//   // /// columnGroups that can group columns can be omitted.
//   // final List<PlutoColumnGroup> columnGroups = [
//   //   PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
//   //   PlutoColumnGroup(title: 'User information', fields: ['name', 'age']),
//   //   PlutoColumnGroup(title: 'Status', children: [
//   //     PlutoColumnGroup(title: 'A', fields: ['role'], expandedColumn: true),
//   //     PlutoColumnGroup(title: 'Etc.', fields: ['joined', 'working_time']),
//   //   ]),
//   // ];
//   //
//   // /// [PlutoGridStateManager] has many methods and properties to dynamically manipulate the grid.
//   // /// You can manipulate the grid dynamically at runtime by passing this through the [onLoaded] callback.
//   // late final PlutoGridStateManager stateManager;
//   //
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: Container(
//   //       padding: const EdgeInsets.all(15),
//   //       child: PlutoGrid(
//   //         columns: columns,
//   //         rows: rows,
//   //         columnGroups: columnGroups,
//   //         onLoaded: (PlutoGridOnLoadedEvent event) {
//   //           stateManager = event.stateManager;
//   //         },
//   //         onChanged: (PlutoGridOnChangedEvent event) {
//   //           print(event);
//   //         },
//   //         configuration: const PlutoGridConfiguration(
//   //           enableColumnBorder: true,
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
// }
