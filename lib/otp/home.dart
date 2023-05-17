import 'package:dart_task/otp/home_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/user_model.dart';

class Home_Api_List extends StatefulWidget {
  const Home_Api_List({super.key});

  @override
  State<Home_Api_List> createState() => _Home_Api_ListState();
}

class _Home_Api_ListState extends State<Home_Api_List> {
  final dio = Dio();
  final _user = <UserModel>[].obs;
  final url = 'https://jsonplaceholder.typicode.com/posts';
  List<UserModel> get user => _user;

  void fetchPost()async{
    try{
        final reponse = await dio.get(url);
        if (reponse.statusCode == 200) {
          final List<dynamic> data = reponse.data;
          final List<UserModel> users = data.map((e) => UserModel.fromJson(e)).toList();
          _user.value = users;
          
        }
    }catch(e){
      print('Something Worng ... '+e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home Scren"),
      ),
      body:Obx(() => ListView.builder(
            itemCount: user.length,
            itemBuilder: (context,index){
              final post = user[index];
        return Card(
          child: ListTile(
            title: Text('Kamlesh'),
            leading: Icon(Icons.person_outline),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
      );
      } 
      )
      )
    );
  }
}