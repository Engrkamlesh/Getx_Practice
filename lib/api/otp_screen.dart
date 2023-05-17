import 'package:dart_task/hero_ani.dart';
import 'package:email_auth/email_auth.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTP_Screen extends StatefulWidget {
  final emailcontroller;
  const OTP_Screen({super.key,required this.emailcontroller});

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
  // EmailOTP emailAuth = EmailOTP();
  
  final otp = TextEditingController();
  EmailAuth emailAuth = EmailAuth(sessionName: 'Test Session');
    void verifyOtp() async {
  bool result = await emailAuth.validateOtp(recipientMail: widget.emailcontroller, userOtp: otp.text
      );
      if (result) {
        Get.snackbar('OTP Veried', 'OTP are verfied');
        Get.to(Hero_Anim());
      }else{
        Get.snackbar('Erorr', 'Something Wring....');
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Email OTP'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextFormField(
          controller: otp,
          decoration: InputDecoration(
            hintText: 'Email OTP'
          ),
        ),
        SizedBox(height: 50),
        ElevatedButton(onPressed: ()async{
          verifyOtp();
          // if (await emailAuth.verifyOTP(otp: otp) == true) {
          //   Get.snackbar('OTP Verfify', 'OTP is verified');
          //       Get.to(Hero_Anim());
          // }else{
          //   Get.snackbar('Error', "Something wrong Here?");
          // }
        }, child: Text('OTP Verify'))
      ],),
    );
  }
}