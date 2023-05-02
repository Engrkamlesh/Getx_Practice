import 'package:dart_task/getController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Switch_Screen extends StatefulWidget {
  const Switch_Screen({super.key});
  @override
  State<Switch_Screen> createState() => _Switch_ScreenState();
}

class _Switch_ScreenState extends State<Switch_Screen> {

CountgetProvider controller = Get.put(CountgetProvider());

  // bool notify = false;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Swtich Screen'),),
      body: Center(
        child:ListView.builder(
          itemCount: controller.FruitList.length,
          itemBuilder: (context, index){
          return  Card(
            child: ListTile(
              onTap: (){
                if (controller.TempFruit.contains(controller.FruitList[index].toString())) {
                  controller.removeFruit(controller.FruitList[index].toString());
                }else{
                controller.addFruit(controller.FruitList[index].toString());
                }
              
              },
            title: Text(controller.FruitList[index].toString()),
            trailing:Obx(() => Icon(Icons.favorite, 
            color:controller.TempFruit.contains(controller.FruitList.value.obs[index].toString())?Colors.red:Colors.white,))
                  ),
          );
        })
      ),
    );
  }
}