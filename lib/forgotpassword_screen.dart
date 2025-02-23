import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:email_validator/email_validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset("assets/icons/forgotpassword.json",
                    fit: BoxFit.cover, width: 250),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "Enter Email Address",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 22,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: _emailController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter Email";
                    }

                    final bool isValid = EmailValidator.validate(val);

                    if (!isValid) {
                      return "Please enter valid Email";
                    }
                    return null;
                  },
                  cursorColor: Color(0xFF8B98B4),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(color: Color(0xFF8B98B4)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(color: Color(0xFF8B98B4)),
                      ),
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF8B98B4)),
                          borderRadius: BorderRadius.circular(24))),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "signin_screen");
                },
                child: Text(
                  "Back to SignIn",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
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
                    if (_formKey.currentState!.validate())
                      Navigator.pushNamed(context, "emailverification_screen");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
