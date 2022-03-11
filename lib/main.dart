import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/home.dart';
import 'package:savedata/src/pages/binding/binding.dart';
import 'package:savedata/src/pages/controller/count_controller_with_getx.dart';
import 'package:savedata/src/pages/named/first.dart';
import 'package:savedata/src/pages/named/second.dart';
import 'package:savedata/src/pages/next.dart';
import 'package:savedata/src/pages/textfield/my_input_theme.dart';
import 'package:savedata/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          //inputDecorationTheme: MyInputTheme().theme(), // input박스의 스타일설정을 통일
        ),
        initialRoute: "/",
        getPages: [
          GetPage(
              name: "/",
              page: () => Home(),
              transition: Transition.zoom), //transition:넘어갈때의 애니메이션 처리
          GetPage(
              name: "/first",
              page: () => FirstNamePage(),
              transition: Transition.zoom),
          GetPage(
              name: "/second",
              page: () => SecondNamePage(),
              transition: Transition.zoom),
          GetPage(
              name: "/nextarg",
              page: () => NextPageArg(),
              transition: Transition.zoom),
          GetPage(
              name: "/nextmap",
              page: () => NextPageMap(),
              transition: Transition.zoom),
          GetPage(
              name: "/nextclass",
              page: () => NextPageClass(),
              transition: Transition.zoom),
          GetPage(
              //url param 전달
              name: "/user/:uid",
              page: () => UserPage(),
              transition: Transition.zoom),
          GetPage(
              //url param 전달
              name: "/user/:uid",
              page: () => UserPage(),
              transition: Transition.zoom),
          GetPage(
              //url param 전달
              name: "/binding",
              page: () => BindingPageBinding(),
              binding: BindingsBuilder(() {
                Get.put(CountControllerWithGetX());
              })), //page를 세팅할때 binding가능
        ]);
  }
}
