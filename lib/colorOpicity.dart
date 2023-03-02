import 'package:dart_task/getController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorOpicity extends StatefulWidget {
  const ColorOpicity({super.key});

  @override
  State<ColorOpicity> createState() => _ColorOpicityState();
}

class _ColorOpicityState extends State<ColorOpicity> {

  CountgetProvider _controller = Get.put(CountgetProvider());
  // double opi = .3;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Color Opicity'),),
      body: Center(
        child: Column(children: [
          Obx(() =>  Container(
            height: 250,
            width: 300,
            color: Colors.red.withOpacity(_controller.Opicity.value),
          ),),
         Obx(() =>  Slider(value: _controller.Opicity.value, onChanged:(value){
          _controller.setOpicity(value);
            // setState(() {  
            // });
          }))
         
        ]),
      ),
    );
  }
}