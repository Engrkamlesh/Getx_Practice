// ignore_for_file: unused_element

import 'package:dart_task/api/user_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
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



}