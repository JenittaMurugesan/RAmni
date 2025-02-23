import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFFF5B55), Color(0xFFFF1161)])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/icons/logo.png",
                  height: 146,
                ),
                Text(
                  "RAMNI",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width - 134,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFE3A59)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "signin_screen");
                    }),
                SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "signin_screen");
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
