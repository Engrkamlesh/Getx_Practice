import 'dart:io';
import 'package:dart_task/getController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Image_Picker extends StatefulWidget {
  const Image_Picker({super.key});

  @override
  State<Image_Picker> createState() => _Image_PickerState();
}

class _Image_PickerState extends State<Image_Picker> {
  CountgetProvider controller = Get.put(CountgetProvider());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          CircleAvatar(
            backgroundImage: controller.imagePath.isNotEmpty?FileImage(File(controller.imagePath.toString())):null,
          ),
          SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            controller.getImage();
          }, child: Text('upload Image'))
        ],),
      ),
    );
  }
}