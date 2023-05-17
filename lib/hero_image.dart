import 'package:flutter/material.dart';

class Hero_image extends StatelessWidget {
  const Hero_image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: 'image',
          child: Image.asset('image/img.jpg',height: 400,width: double.infinity,)),
    
    );
  }
}