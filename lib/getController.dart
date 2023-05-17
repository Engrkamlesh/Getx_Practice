// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CountgetProvider extends GetxController{

  var selectedValue = 0.obs;

  void updateSelectedValue(int value) {
    selectedValue.value = value;
  }




//Image Picker 
RxString imagePath = ''.obs;

Future getImage()async{
  final ImagePicker _picker = ImagePicker();
  final image = await _picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    imagePath.value = image.path.toString();
  }
}

//Favorite Function
RxList<String> FruitList=['Apple','Mango','Orange','PineApple','Banana'].obs;
RxList TempFruit = [].obs;

addFruit(String value){
  TempFruit.add(value);
}

removeFruit(String value){
  TempFruit.remove(value);
}

//Counter Function 
RxInt counter = 1.obs;

incrementFun(){
  counter.value++;
}

//Color Opicity
RxDouble Opicity = .3.obs;

setOpicity(double value){
  Opicity.value = value;
}

//Swtich Button
RxBool notification = false.obs;
setNotification(bool value){
  notification.value = value;
}
}