import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

class List_Screen extends StatelessWidget {
   List_Screen({super.key});

    List<String> imageUrl= [
    'image/1.jpg',
    'image/2.jpg',
    'image/3.jpg',
    'image/4.jpg',
    'image/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.white,
        appBar: AppBar(title: Text('List Screen'),),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: imageUrl.map((e) =>Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                height: size.height/2.5,
                width: size.width/2,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 38, 37, 37),
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 10  horizontally
                        1.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  color: Vx.amber100,
                  // color: Color.fromARGB(255, 44, 43, 40),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        imageUrl[1],
                        width: size.width / 1.7,
                        height: size.height / 5,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children:imageUrl.map((e) => customimgBox(e, size.height/23)).toList()
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "salonname",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('0.0 KM',
                      style: TextStyle(
                        fontSize: size.width / 35,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width / 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width / 8,
                        height: size.height / 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(147, 98, 101, 98),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'closed',
                          style: TextStyle(
                              color: Colors.white, fontSize: size.width / 45),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              ),
          ).toList()
          ),
        ),
    )
    );
  }
  Container customimgBox(String img, double size) {
    return Container(
      margin: EdgeInsets.all(5),
      height: size,
      child:Image.network(
        img
      ),
    );
  }
  
}