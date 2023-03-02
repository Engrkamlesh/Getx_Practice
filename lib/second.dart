import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second_Screen extends StatefulWidget {
  var name;
  Second_Screen({super.key, this.name});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'+Get.arguments[0]),centerTitle: true,),
    body: Center(child: Text("Hello"),),
    );
  }
}