import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'otp_screeen.dart';

class Send_OPT_CODE extends StatefulWidget {
  const Send_OPT_CODE({Key? key}) : super(key: key);

  @override
  State<Send_OPT_CODE> createState() => _Send_OPT_CODEState();
}

class _Send_OPT_CODEState extends State<Send_OPT_CODE> {
  TextEditingController email = TextEditingController();
  EmailOTP myauth = EmailOTP();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'http://thestatetimes.com/wp-content/uploads/2018/02/infotech.jpg',
              height: 350,
            ),
          ),
          const SizedBox(
            height: 60,
            child: Text(
              "Enter your Email to get Code",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            child: Column(
              children: [
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.mail,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () async {
                          myauth.setConfig(
                              appEmail: "contact@hdevcoder.com",
                              appName: "Email OTP",
                              userEmail: email.text,
                              otpLength: 4,
                              otpType: OTPType.digitsOnly);
                          if (await myauth.sendOTP() == true) {
                            Get.snackbar('OTP Send', 'Please check your email We will send otp on your email');
                            Get.to(OtpScreen(myauth: myauth));
                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(const SnackBar(
                            //   content: Text("OTP has been sent"),
                            // ));
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>   OtpScreen(myauth: myauth,)));
                          } else {
                            Get.snackbar('Error', 'OTP send failed Samething Wrong!...');
                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(const SnackBar(
                            //   content: Text("Oops, OTP send failed"),
                            // ));
                          }
                        },
                        icon: const Icon(
                          Icons.send_rounded,
                          color: Colors.teal,
                        )),
                    hintText: "Email Address",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}