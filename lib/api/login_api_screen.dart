import 'package:dart_task/api/apicalling.dart';
import 'package:flutter/material.dart';

class Login_Api_Screen extends StatefulWidget {
  const Login_Api_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Api_Screen> createState() => _Login_Api_ScreenState();
}

class _Login_Api_ScreenState extends State<Login_Api_Screen> {
  
  ApiCalling _calling = ApiCalling('https://reqres.in/api/users/2');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update api'),),
      body:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        TextFormField(
          controller: _calling.email,
          decoration: InputDecoration(
            hintText: 'Enter name'
          ),
        ),
        TextFormField(
          controller: _calling.pass,
          decoration: InputDecoration(
              hintText: 'Enter email'
          ),
        ),
        ElevatedButton(onPressed: (){
          _calling.UpdateApi();
        }, child: Text('Update'))
      ],),
    ));
  }
}
