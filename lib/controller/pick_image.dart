import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiple_images_picker/multiple_images_picker.dart';
import 'images_controller.dart';


class Pick_Images extends StatelessWidget {
  final ImagePickerController imagePickerController = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: imagePickerController.images.length,
          itemBuilder: (context, index) {
            final imageItem = imagePickerController.images[index];
            return ListTile(
              leading: AssetThumb(
                asset: imageItem.path,
                width: 100,
                height: 100,
              ),
              title: Text('Image $index'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: imagePickerController.pickImages,
        child: Icon(Icons.add),
      ),
    );
  }
}
