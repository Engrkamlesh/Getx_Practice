
import 'package:get/get.dart';

class CountgetProvider extends GetxController{

RxList<String> FruitList=['Apple','Mango','Orange','PineApple','Banana'].obs;
RxList TempFruit = [].obs;

addFruit(String value){
  TempFruit.add(value);
}

removeFruit(String value){
  TempFruit.remove(value);
}


RxInt counter = 1.obs;

incrementFun(){
  counter.value++;
}

RxDouble Opicity = .3.obs;

setOpicity(double value){
  Opicity.value = value;
}

RxBool notification = false.obs;

setNotification(bool value){
  notification.value = value;
}

}