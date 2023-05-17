
import 'package:dart_task/controller/post_controller.dart';
import 'package:dart_task/model/postmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class New_Screen extends StatelessWidget{
   New_Screen({super.key});
  Post_Controller controller = Get.put(Post_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Api'),centerTitle: true,),
      body:Obx(() => ListView.builder(
            itemCount:controller.postdata.length,
            itemBuilder: (context, index){
              var data = controller.postdata[index];
            return  Card(
            child: ListTile(
              title: Text(data['title']),
              subtitle: Text(data['body']),
            ),
          );
          })
          ),
      
    );
  }
}