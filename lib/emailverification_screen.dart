import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pinput/pinput.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});
  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Verfication"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 38.0),
        child: Column(children: [
          Center(
              child: Text(
            "Enter Verification Code",
            style: TextStyle(fontSize: 18, color: Colors.black),
          )),
          SizedBox(
            height: 18,
          ),
          Pinput(
            controller: _controller,
            // You can pass your own SmsRetriever implementation based on any package
            // in this example we are using the SmartAuth

            separatorBuilder: (index) => const SizedBox(width: 8),
            validator: (value) {},
            hapticFeedbackType: HapticFeedbackType.lightImpact,
            onCompleted: (pin) {
              debugPrint('onCompleted: $pin');
            },
            onChanged: (value) {
              debugPrint('onChanged: $value');
            },
            cursor: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 9),
                  width: 22,
                  height: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("If you did't receive a code."),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Resend",
                  style: TextStyle(color: Color(0xFFFF5B55)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          MaterialButton(
              minWidth: MediaQuery.of(context).size.width - 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              color: Color(0xFFFF5B55),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Send",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                if (_controller.text.length == 4) {
                  Navigator.pushNamed(context, "newpassword_screen");
                } else {
                  print(_controller.text);
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
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              })
        ]),
      ),
    );
  }
}
