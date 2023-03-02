import 'package:dart_task/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    final cProvider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Counter"),),
      body: SafeArea(child: Center(
        child: Consumer<CounterProvider>(builder:(context, value, child){
          return Text(value.count.toString(),style: TextStyle(fontSize: 50),);
        }),
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        cProvider.setCount();
      },child: Icon(Icons.add),),
    );
  }
}