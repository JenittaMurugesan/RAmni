import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NewpasswordScreen extends StatefulWidget {
  const NewpasswordScreen({super.key});

  @override
  State<NewpasswordScreen> createState() => _NewpasswordScreenState();
}

class _NewpasswordScreenState extends State<NewpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("New Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 38.0, horizontal: 42),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.asset("assets/icons/passwordsetup.json",
                  fit: BoxFit.cover, width: 300),
              Text(
                "Enter New Password",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                cursorColor: Color(0xFF8B98B4),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xFF8B98B4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Color(0xFF8B98B4)),
                    ),
                    hintText: "Enter New Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF8B98B4)),
                        borderRadius: BorderRadius.circular(24))),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Enter Confirm Password",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                cursorColor: Color(0xFF8B98B4),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: Color(0xFF8B98B4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Color(0xFF8B98B4)),
                    ),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF8B98B4)),
                        borderRadius: BorderRadius.circular(24))),
              ),
              SizedBox(
                height: 38,
              ),
              MaterialButton(
                  minWidth: MediaQuery.of(context).size.width - 70,
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
                    Navigator.pushNamed(context, "signin_screen");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
