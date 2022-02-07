import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savedata/src/home.dart';
import 'package:savedata/src/pages/named/first.dart';
import 'package:savedata/src/pages/named/second.dart';
import 'package:savedata/src/pages/next.dart';
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
        ),
        // home: Home(),
        initialRoute: "/",
        // routes: {
        //   "/": (context) => Home(),
        //   "/first": (context) => FirstNamePage(),
        //   "/second": (context) => SecondNamePage(),
        // },
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
        ]);
  }
}
