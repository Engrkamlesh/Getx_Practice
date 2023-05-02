import 'dart:convert';
import 'package:dart_task/ApiModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiCalling{
    String url;
    ApiCalling(this.url){}
    
    List<ApiModel> userlist = [];
    Future<List<ApiModel>> getApi ()async{
      final response = await http.get(Uri.parse(url));
      // final response = await http.get(Uri.parse(ApiConstant.BaseApi+ApiConstant.endpoint));
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        for(Map i in data){
          userlist.add(ApiModel.fromJson(i));
        }
        return userlist;
      }
      else{
        return userlist;
      }
    }

    final email = TextEditingController();
    final pass = TextEditingController();
    Future LoginApi ()async{
      final response = await http.post(Uri.parse(url),
      body: {
        'email' : email.text.toString(),
        'password' : pass.text.toString()
      }
      );
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        Get.snackbar('Login api', 'Login successgully');
      }
      else{
        Get.snackbar('Faild', 'Same Error');
      }
    }


    Future UpdateApi ()async{
      final response = await http.put(Uri.parse(url),
          body: {
            'name' : email.text.toString(),
            'job' : pass.text.toString()
          }
      );
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        Get.snackbar('Update api', 'update successully');
        print(email.text.toString());
      }
      else{
        Get.snackbar('Faild', 'Same Error');
      }
    }
    }
