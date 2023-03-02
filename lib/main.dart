import 'package:dart_task/counter.dart';
import 'package:dart_task/counter_provider.dart';
import 'package:dart_task/second.dart';
import 'package:dart_task/simple.dart';
import 'package:dart_task/swtich_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'colorOpicity.dart';
import 'getCount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      home: Switch_Screen(),
      getPages: [
        GetPage(name: '/', page: ()=>Simple_screen()),
        GetPage(name: '/second', page: ()=>Second_Screen())
      ],
    );
  }
}

