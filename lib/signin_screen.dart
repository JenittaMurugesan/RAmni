import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInSCreen extends StatefulWidget {
  const SignInSCreen({super.key});

  @override
  State<SignInSCreen> createState() => _SignInSCreenState();
}

class _SignInSCreenState extends State<SignInSCreen> {
  bool _isPressed = false;
  final _formKey = GlobalKey<FormState>();

  final _userNameController = TextEditingController();
  final _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFFFF5B55), Color(0xFFFF1161)])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(98.0),
                child: Column(
                  children: [
                    Image.asset('assets/icons/group.png'),
                    Text(
                      "RAMNI",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(23)),
                        color: Colors.white // <= Error here
                        ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 26,
                        ),
                        Text(
                          "SIGN IN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Color(0xFFFF4059)),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  color: Color(0xFFECF6FB),
                                  child: TextFormField(
                                    controller: _userNameController,
                                    validator: (val) {
                                      if (val!.length < 8 || val!.length > 32) {
                                        return "Please enter User Name between 8 to 32 characters";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      hintText: "User Name",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  color: Color(0xFFECF6FB),
                                  child: TextFormField(
                                    obscureText: _isPressed,
                                    controller: _PasswordController,
                                    validator: (val) {
                                      if (val!.length < 8 || val!.length > 12) {
                                        return "Please enter Password between 8 to 12 characters";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          _isPressed = !_isPressed;
                                          setState(() {});
                                        },
                                        icon: Icon(
                                          _isPressed
                                              ? Icons.remove_red_eye_outlined
                                              : Icons.remove_red_eye,
                                          color: Color(0xFF8B98B4),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFBFBFB))),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 48,
                        ),
                        MaterialButton(
                            minWidth: MediaQuery.of(context).size.width - 200,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            color: Color(0xFFFF5B55),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print(_userNameController.text);
                                print(_PasswordController.text);
                                Navigator.pushNamed(context, "home_screen");
                              }
                            }),
                        SizedBox(
                          height: 8,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "forgotpassword_screen");
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFF8B98B4)),
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Divider(),
                        SizedBox(
                          height: 24,
                        ),
                        // MaterialButton(
                        //         minWidth: MediaQuery.of(context).size.width - 200,
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //         BorderRadius.all(Radius.circular(32))),
                        //     color: Colors.white,
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(12.0),
                        //       child: Text(
                        //         "CREATE NEW ACCOUNT",
                        //         style: TextStyle(
                        //           fontSize: 16,
                        //           fontWeight: FontWeight.bold,
                        //           color: Color(0xFFFF5B55),
                        //         ),
                        //       ),
                        //     ),
                        //     onPressed: () {
                        //       Navigator.pushNamed(context, "signup_screen");
                        //     }),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "signup_screen");
                          },
                          child: Text(
                            "CREATE NEW ACCOUNT",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFF5B55),
                            ),
                          ),
                        )
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
