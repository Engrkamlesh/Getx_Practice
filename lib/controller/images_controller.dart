import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiple_images_picker/multiple_images_picker.dart';
import '../model/image_model.dart';

class ImagePickerController extends GetxController {
  final images = [].obs;

 
  // List<File> pickedImages = [];
  //   try {
  //     pickedImages = await  MultipleImagesPicker.pickImages(maxImages: 3);

  //   } on Exception catch (e) {
  //     // Handle the exception if necessary
      
  //     Get.snackbar('Images', 'Please only take 3 images ');
  //   }

  //   if (pickedImages.isNotEmpty) {
  //     for  (Asset img in pickedImages) {
  //       images.add(ImageItem(img));
  //     }
  //   }

  Future<void> pickImages() async {
    final pickedImages = await ImagePicker().pickMultiImage();
    if (pickedImages != null) {
       if (images.length + pickedImages.length <= 3) {
      for (var image in pickedImages) {
        images.add(image.path);
      }
      print('successfully');
       for (var i = 0; i <images.length; i++) {
            print(images[i]);
          }
          print(images);
    } else {
      Get.snackbar('Images', 'Please only take 3 images ');
      print('Failed');
      // Handle the case where the user exceeds the image limit
      // You can show an error message or take appropriate action
    }
      // for (var image in pickedImages) {
      //   images.add(ImageItem(image.path));
      // }
    }
  }

  // void _pickImages() async {
  // final List<XFile>? pickedFiles = await ImagePicker().pickMultiImage(
  //   maxImages: 3, // Set the maximum number of images to 3
  // );

  // if (pickedFiles != null) {
  //   selectedImages.assignAll(pickedFiles
  //       .map((file) => File(file.path))
  //       .toList()
  //       .sublist(0, 3)); // Limit the selected images to a maximum of 3
  //   update(); // Notify GetX that the selectedImages list has changed
  // }
// }
}
