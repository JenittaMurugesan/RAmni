import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni/signin_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides default back button
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFFF5B55),
                  Color(0xFFFF1161),
                ]),
          )),
          title: Padding(
            padding: const EdgeInsets.only(right: 65.0),
            child: Center(
              child: Text(
                "My Account",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 13, color: Color(0xFFFF5B55)),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFFF5B55),
                  Color(0xFFFF1161),
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage("assets/icons/users.png"),
                  ),
                  Text(
                    "PanKaj Patel",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "pankaj.patel@yahoo.com",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(28),
                          topLeft: Radius.circular(28))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "orders_screen");
                          },
                          child: Card(
                            color: Color(0xFFFBFBFB),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Image.asset("assets/icons/truck.png"),
                                title: Text(
                                  "Orders",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "listaddress_screen");
                          },
                          child: Card(
                            color: Color(0xFFFBFBFB),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "assets/icons/map-pin.png",
                                  height: 26,
                                ),
                                title: Text(
                                  "Manage Address Orders",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Card(
                          color: Color(0xFFFBFBFB),
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading:
                                  Image.asset("assets/icons/credit-card.png"),
                              title: Text(
                                "Update Payment",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Card(
                          color: Color(0xFFFBFBFB),
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset("assets/icons/truck.png"),
                              title: Text(
                                "My Chats",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const SignInSCreen();
                                },
                              ),
                              (_) => false,
                            );
                          },
                          child: Card(
                            color: Color(0xFFFBFBFB),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "assets/icons/logout.png",
                                  height: 26,
                                ),
                                title: Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
