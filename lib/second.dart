import 'package:dart_task/simple.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Second_Screen extends StatefulWidget {

  Second_Screen({super.key});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {

final emailcontrller = TextEditingController();

Future<void> setData()async{
  SharedPreferences _sp = await SharedPreferences.getInstance();
  _sp.setString('email', emailcontrller.text);
  setState(() {
    
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),centerTitle: true,),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      TextField(
        controller: emailcontrller,
        decoration: InputDecoration(
          
          hintText: 'Enter address'
        ),
      ),
      ElevatedButton(onPressed: (){
        setData().then((value) {
          Get.to(()=>Simple_screen());
        }).onError((error, stackTrace) {
          print(error.toString());
        });
      }, child: Text('Login')).paddingOnly(top: 20)
    ],)
    );
  }
}