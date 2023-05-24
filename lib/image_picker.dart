import 'dart:io';
import 'package:dart_task/getController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

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
        child: Obx((){
          return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            controller.imagePath.isEmpty ? Container(
              height: 180,
              width: 320,
              color: Colors.blue,
              
              child: Image.asset(controller.defaultImagePath.toString(),fit: BoxFit.cover,),
            ).centered().py(30):Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                
              ),
              // color: Colors.blue,
              child: Image.file(File(controller.imagePath.toString()),fit: BoxFit.cover,),
            ).centered().py(30),
            ElevatedButton(onPressed: (){
              controller.pickImage();
            }, child: Text('upload')),
          //   Container(
          //     child: controller.imagePath.isEmpty?
          // CircleAvatar(
          //   radius: 50,
          //   backgroundImage:FileImage(File(controller.imagePath.toString()))):
          // CircleAvatar(
          //   radius: 50,
          //   backgroundImage:AssetImage(controller.defaultImagePath.toString())),
          //   ).onTap(() {
          //     controller.pickImage();
          //   }),
            
            // ) : Asse 
            // controller.imagePath.isNotEmpty?FileImage(File(controller.imagePath.toString())):null,

            // child: controller.imagePath.value == null ? Image.asset('assets/images/default_image.png'): Image.file(File(controller.imagePath.toString())),
          // ),
          SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            controller.pickImage();
          }, child: Text('upload Image'))
        ],);
        })
      ),
    );
  }
}