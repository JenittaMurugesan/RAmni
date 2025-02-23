import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpController = TextEditingController();
  Timer? timer;
  int resendOtp = 30;

  @override
  void initState() {
    super.initState();

    /// need to convert into function
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (t.tick == 31) {
        timer!.cancel();
        return;
      }
      resendOtp = resendOtp - 1;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFFFF5B55), Color(0xFFFF1161)])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Align(
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 33,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Image.asset("assets/icons/group.png"),
                    Text(
                      "RAMNI",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 56,
                        ),
                        Text(
                          "OTP VERIFICATION",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFF5B55)),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Text(
                          "OTP HAS BEEN SEND TO 9979409958",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        OtpTextField(
                          numberOfFields: 4,
                          borderColor: Color(0xFFECF6FB),
                          enabledBorderColor: Color(0xFFECF6FB),
                          focusedBorderColor: Color(0xFFECF6FB),
                          cursorColor: Color(0xFFECF6FB),
                          fieldWidth: 64,

                          showFieldAsBox: true,

                          onSubmit: (String verificationCode) {
                            _otpController.text = verificationCode;
                            setState(() {});
                            // showDialog(
                            //     context: context,
                            //     builder: (context) {
                            //       return AlertDialog(
                            //         title: Text("Otp Verify Successfully"),
                            //         content: Text(
                            //             'Code entered is $verificationCode'),
                            //       );
                            //     });
                          }, // end onSubmit
                        ),
                        SizedBox(
                          height: 86,
                        ),
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            color: Color(0xFFFF5B55),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 58.0, vertical: 22),
                              child: Text(
                                "VERIFY OTP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            onPressed: () {
                              if (_otpController.text.length == 4) {
                                Navigator.pushNamed(context, "welcome_screen");
                              } else {
                                print(_otpController.text);
                                final snackBar = SnackBar(
                                  backgroundColor: Color(0xFFFF5B55),
                                  content: const Text('Please Enter Otp'),
                                  action: SnackBarAction(
                                    textColor: Colors.white,
                                    label: 'Ok',
                                    onPressed: () {
                                      // Some code to undo the change.
                                    },
                                  ),
                                );

                                // Find the ScaffoldMessenger in the widget tree
                                // and use it to show a SnackBar.
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            }),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("00:$resendOtp"),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend OTP",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xFF8B98B4)),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
