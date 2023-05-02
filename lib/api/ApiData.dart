import 'package:dart_task/api/apicalling.dart';
import 'package:flutter/material.dart';

import '../ApiModel.dart';

class Api_Screen extends StatefulWidget {
  const Api_Screen({Key? key}) : super(key: key);

  @override
  State<Api_Screen> createState() => _Api_ScreenState();
}

class _Api_ScreenState extends State<Api_Screen> {
  ApiCalling _apiCalling = ApiCalling('https://jsonplaceholder.typicode.com/posts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Api Screen'),),
      body:FutureBuilder(
          future: _apiCalling.getApi(),
          builder: (context, snapshot){
        return _apiCalling.userlist.isEmpty?
          Center(
            child: CircularProgressIndicator(),
          )
          : ListView.builder(
          itemCount: _apiCalling.userlist.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(_apiCalling.userlist[index].title.toString()),
              ),
            );

      });
      })
    );
  }
}
