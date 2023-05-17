import 'package:dart_task/hero_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Hero_Anim extends StatelessWidget {
  const Hero_Anim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'image',
          child: Image.asset('image/img.jpg',height: 200,width: 200,)),
      ).onTap(() {Get.to(Hero_image());}),
    );
  }
}