import 'package:dart_task/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Simple_screen extends StatefulWidget {
  const Simple_screen({super.key});

  @override
  State<Simple_screen> createState() => _Simple_screenState();
}

class _Simple_screenState extends State<Simple_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple"),centerTitle: true,),
      body:ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Hey!'),
              onTap: (){
                Get.snackbar("Hello","Vishal Kanjar hey",backgroundColor: Colors.amber,snackPosition: SnackPosition.BOTTOM);
              },
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Hey!'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Same Update',
                  middleText: 'This is getx dialog box uisng for practice',
                  textCancel: 'Cancle',
                  textConfirm: 'Ok'
                );
              },
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Set Theme Mode'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    color: Colors.red,
                    child: Column(
                    children: [
                       Card(
                              child: ListTile(
                                title: Text('Light Mode'),
                                onTap: (){
                                  Get.changeTheme(ThemeData.light());
                                },
                              ),
                            ), Card(
                              child: ListTile(
                                title: Text('Dark Mode'),
                                onTap: (){
                                  Get.changeTheme(ThemeData.dark());
                                },
                              ),
                            )
                    ],
                                  ),
                  ));
                
              },
            ),
          )
        ],
      ) ,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed('/second',arguments: [
          'EHlloo',
          'kheloo'
        ]);
      },child: Icon(Icons.add),),
    );
  }
}