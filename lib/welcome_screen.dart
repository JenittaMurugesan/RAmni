import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFFF5B55), Color(0xFFFF1161)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "Hello PanKaj",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Welcome to the Ramni",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 53,
                backgroundImage: AssetImage(
                  "assets/icons/users.png",
                ),
              ),
              SizedBox(
                height: 12,
              ),
              MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Text(
                    "Change Profile Picture",
                    style: TextStyle(fontSize: 13, color: Color(0xFFFF5B55)),
                  ),
                  onPressed: () async {
                    Permission.mediaLibrary.request();
                    if (await Permission.mediaLibrary.status.isGranted) {
                      final XFile? pickedFile = await _picker.pickImage(
                        source: ImageSource.gallery,
                      );
                    }
                  }),
            ],
          ),
          Column(
            children: [
              MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "UPLOAD PICTURE",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFF1161),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "home_screen");
                  }),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home_screen");
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
