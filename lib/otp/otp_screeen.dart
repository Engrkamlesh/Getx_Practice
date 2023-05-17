import 'package:dart_task/hero_ani.dart';
import 'package:dart_task/otp/home.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, required this.myauth}) : super(key: key);
  final EmailOTP myauth;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),    Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'http://thestatetimes.com/wp-content/uploads/2018/02/infotech.jpg',
                height: 350,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Enter OTP Code",
              style: TextStyle(fontSize: 40),
            ),
            TextFormField(
              controller: otpController,
              decoration: InputDecoration(
                hintText: 'Enter OTP'
              ),
            ).px12(),
          //  OTPTextField(
          //     controller: otpController,
          //     length: 4,
          //     width: MediaQuery.of(context).size.width,
          //     textFieldAlignment: MainAxisAlignment.spaceAround,
          //     fieldWidth: 45,
          //     fieldStyle: FieldStyle.box,
          //     outlineBorderRadius: 15,
          //     style: TextStyle(fontSize: 17),
          //     onChanged: (pin) {
          //       print("Changed: " + pin);
          //     },
          //     onCompleted: (pin) {
          //       print("Completed: " + pin);
          //     }).px12(),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                if (await widget.myauth.verifyOTP(otp: otpController.text) == true) {
                  Get.snackbar('Verifed', 'Your OTP are Verifed');
                  Get.to(Hero_Anim());
                }else{
                  Get.snackbar('Error', "Something Wrong.......!");
                }
              },
              child: const Text(
                "Confirm",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
