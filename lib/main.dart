import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/menu_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: ( Platform.isAndroid ) ? Colors.transparent : Colors.white
    ));
    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'menu',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'menu' : (BuildContext context) => MenuPage(),
      },
    );
  }
}
