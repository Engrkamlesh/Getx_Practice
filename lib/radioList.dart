import 'package:dart_task/getController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class RadioList extends GetView<CountgetProvider> {
   RadioList({super.key});

  final radioController = Get.put(CountgetProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio lIst'),),
      body:ListView(
  children: [
    Obx(() => RadioListTile<int>(
      title: Text('Option 1'),
      value: 0,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
    Obx(() => RadioListTile<int>(
      title: Text('Option 2'),
      value: 1,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
    Obx(() => RadioListTile<int>(
      title: Text('Option 3'),
      value: 2,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
    Obx(() => RadioListTile<int>(
      title: Text('Option 4'),
      value: 3,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
    Obx(() => RadioListTile<int>(
      title: Text('Option 5'),
      value: 4,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
    Obx(() => RadioListTile<int>(
      title: Text('Option 6'),
      value: 5,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
    Obx(() => RadioListTile<int>(
      title: Text('Option 7'),
      value: 6,
      groupValue: radioController.selectedValue.value,
      onChanged: (value) {
        radioController.updateSelectedValue(value!);
      },
    )),
  ],
)

    );
  }
}