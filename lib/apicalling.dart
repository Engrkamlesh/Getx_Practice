import 'dart:convert';
import 'package:dart_task/ApiModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ApiCalling extends StatefulWidget {
  const ApiCalling({Key? key}) : super(key: key);

  @override
  State<ApiCalling> createState() => _ApiCallingState();
}

class _ApiCallingState extends State<ApiCalling> {
  List<ApiModel> postmodel = [];
  Future<List<ApiModel>> getapi()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data =  jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        postmodel.add(ApiModel.fromJson(i));
      }
      return postmodel;
    }else{
      return postmodel;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('APi calling'),),
      body: Column(children: [
        Expanded(child: FutureBuilder(
          future: getapi(),
          builder: (context, snapshot){
            if(!snapshot.hasData){
              return Center(child: CircularProgressIndicator(),);
            }else{
             return ListView.builder(
                  itemCount: postmodel.length,
                  itemBuilder: (context, index){
                return
                  ListTile(
                    title: Text(postmodel[index].toString()),
                  );
              });
            }
          },
        ))
      ],),
    );
  }
}
