import 'package:dart_task/api/otp_screen.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  final email = TextEditingController();
  EmailAuth emailAuth = EmailAuth(sessionName: 'Test Session');
  // void sendOtp() async {

  // EmailOTP emailOTP = EmailOTP();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextFormField(
          controller: email,
          decoration: InputDecoration(
            hintText: 'Email OTP'
          ),
        ),
        SizedBox(height: 50),
        ElevatedButton(onPressed: ()async{
            bool result = await emailAuth.sendOtp(
      recipientMail: email.text, otpLength: 4
      );
      if (result) {
        Get.snackbar('OTP', 'OTP Send in your email');
        Get.to(OTP_Screen(emailcontroller: email));
      }else{
        Get.snackbar('Erorr', 'Something Wring....');
      }
          // sendOtp();
          // emailOTP.setConfig(
          //   appEmail: 'me@rohitchouhan.com',
          //   appName: 'Email OTP',
          //   userEmail: email.text,
          //   otpLength: 4,
          //   otpType: OTPType.digitsOnly
          // );
          // if (await emailOTP.sendOTP() == true) {
      
          //   Get.snackbar('Email', 'Please check your email We will Send Otp On your Email');
          //         Get.to(OTP_Screen());
          // }else{
          //   Get.snackbar('Error', "Something wrong Here?");
          // }
        }, child: Text('Login'))
      ],),
    );
  }
}