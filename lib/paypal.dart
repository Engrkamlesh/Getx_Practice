
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

class PayPal_Screen extends StatefulWidget {
  const PayPal_Screen({super.key});

  @override
  State<PayPal_Screen> createState() => _PayPal_ScreenState();
}

class _PayPal_ScreenState extends State<PayPal_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('image/paypal1.png',width: 130,).pOnly(top: 20),
            Text('Pay with PayPal').text.size(23).make().pOnly(bottom: 15,top: 5),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
              TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ).py12(),
            Row(children: [
              Checkbox(value: false, onChanged:(val){
                setState(() {
                  val = val;
                });
              }),
              Text('Stay logged in for faster checkout').text.size(15).semiBold.make().px(5),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Vx.blue400)
                ),
                child: Icon(Icons.question_mark_outlined,size: 15,color: Vx.blue400,).p(3))
            ],),
            Align(
              alignment: Alignment.centerLeft,
              child: 
            Text('Not recommended on shared devices.').text.size(13).make().pOnly(left: 35),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Vx.blue500
              ),
              child: Text('Log In').text.white.bold.make().centered(),
            ).py16(),
            Text('Having trouble logging in ?').text.size(15).blue500.make(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Divider( 
                  thickness: 2,
                      height: 1.5,),
                Text('or').text.gray300.make().px(5),
                Divider(
                  thickness: 2,
                      height: 1.5,)
              ],),
            
              Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Vx.gray300
              ),
              child: Text('Pay with Debit or Credit Card').text.bold.make().centered(),
            ).py16(),
          ], 
        ).px12(),
      ),
    );
  }
}