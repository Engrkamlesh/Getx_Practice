import 'package:dart_task/counter.dart';
import 'package:dart_task/counter_provider.dart';
import 'package:dart_task/paypal.dart';
import 'package:dart_task/second.dart';
import 'package:dart_task/simple.dart';
import 'package:dart_task/swtich_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'controller/pick_image.dart';
import 'image_picker.dart';
import 'list_Screen.dart';
import 'new_Screen.dart';
import 'otp/home.dart';
import 'otp/otp_screeen.dart';
import 'otp/send_otp.dart';
import 'radioList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child)=> ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, child!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
                      ResponsiveBreakpoint.resize(500, name: MOBILE),
                      ResponsiveBreakpoint.resize(800, name: TABLET),
                      ResponsiveBreakpoint.resize(1000, name: TABLET),
                      ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                      ResponsiveBreakpoint.resize(2460 , name: '4k')
        ]),
      home: Pick_Images(),
      // getPages: [
      //   GetPage(name: '/', page: ()=>Simple_screen()),
      //   GetPage(name: '/second', page: ()=>Second_Screen())
      // ],
    );
  }
}

