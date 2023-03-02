import 'package:dart_task/counter_provider.dart';
import 'package:dart_task/getController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetCounter extends StatefulWidget {
  const GetCounter({super.key});

  @override
  State<GetCounter> createState() => _GetCounterState();
}

class _GetCounterState extends State<GetCounter> {
  final CountgetProvider controller = Get.put(CountgetProvider());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: const Text('Gets App'),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Center(
            child: Obx(() => Text(controller.counter.toString(),style: TextStyle(fontSize: 50),)),)
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.incrementFun();

      },child: const Icon(Icons.add),),
    );
  }
}