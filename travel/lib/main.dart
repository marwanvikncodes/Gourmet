import 'package:flutter/material.dart';
import 'package:travel/History.dart';
import 'package:travel/Religion.dart';
import 'package:travel/attraction1.dart';
import 'package:travel/detail.dart';
import 'package:travel/detail2.dart';
import 'package:travel/home.dart';
import 'package:travel/hr.dart';
import 'package:travel/login.dart';
import 'package:travel/nature2.dart';
import 'package:travel/profile.dart';

import 'nav3.dart';

void main() {
  runApp(MyApp());
}
  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: nav(),
        debugShowCheckedModeBanner: false,
      );
    }
  }
