import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _enterNameController = TextEditingController();
  final _enterEmailController = TextEditingController();
  final _enterMobileController = TextEditingController();
  final _enterPasswordController = TextEditingController();
  final _enterConfirmPasswordController = TextEditingController();
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 43),
                        ),
                        SizedBox(
                          width: 78,
                        ),
                        Image.asset(
                          "assets/icons/group.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height - 78,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Color(0xFFFF1161),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                color: Color(0xFFECF6FB),
                                child: TextFormField(
                                  controller: _enterNameController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please enter the Name";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFBFBFB))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFBFBFB))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFBFBFB))),
                                    hintText: "Enter Name",
                                    hintStyle: TextStyle(
                                        color: Color(0xFF000000), fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                  color: Color(0xFFECF6FB),
                                  child: TextFormField(
                                    controller: _enterEmailController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter the Email";
                                      }
                                      final bool isValid =
                                          EmailValidator.validate(val);

                                      if (!isValid) {
                                        return "Please enter valid Email";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      hintText: "Enter Email",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18),
                                    ),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                  color: Color(0xFFECF6FB),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: _enterMobileController,
                                    validator: (val) {
                                      if (val!.length != 10) {
                                        return "Please enter valid Mobile Number";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB4))),
                                      hintText: "Enter Mobile",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18),
                                    ),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                  color: Color(0xFFECF6FB),
                                  child: TextFormField(
                                    controller: _enterPasswordController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter the Password";
                                      }
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      hintText: "Enter Password",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18),
                                    ),
                                  )),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                  color: Color(0xFFECF6FB),
                                  child: TextFormField(
                                    controller: _enterConfirmPasswordController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter the Confirm Password";
                                      }
                                      if (val !=
                                          _enterPasswordController.text) {
                                        return "Password and Confirm Password are not match";
                                      }
                                      ;
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      hintText: "Confirm Password",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18),
                                    ),
                                  )),
                            ],
                          )),
                      SizedBox(
                        height: 32,
                      ),
                      MaterialButton(
                          color: Color(0xFFFF5B55),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 78.0, right: 78, top: 14, bottom: 14),
                            child: Text(
                              "NEXT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print(_enterNameController.text);
                              print(_enterEmailController.text);
                              print(_enterMobileController.text);
                              print(_enterPasswordController.text);
                              print(_enterConfirmPasswordController.text);
                              Navigator.pushNamed(context, "otp_screen");
                            }
                            ;
                            {
                              print(_enterNameController.text);
                              print(_enterEmailController.text);
                              print(_enterMobileController.text);
                              print(_enterPasswordController.text);
                              print(_enterConfirmPasswordController.text);
                            }
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
