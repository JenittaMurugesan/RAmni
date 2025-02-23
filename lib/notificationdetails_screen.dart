import 'package:flutter/material.dart';

class NotificationDetailsScreen extends StatefulWidget {
  const NotificationDetailsScreen({super.key});

  @override
  State<NotificationDetailsScreen> createState() =>
      _NotificationDetailsScreenState();
}

class _NotificationDetailsScreenState extends State<NotificationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Notifications",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFFF5B55),
            Color(0xFFFF1161),
          ])),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Divider(),
                  SizedBox(
                    height: 12,
                  ),
                ],
              );
            },
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  "assets/icons/chair968.png",
                ),
                title: Text(
                  "Ramni Chair",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                subtitle: Text(
                  "Your order id #12344 was delivered on jun 02, 2024",
                ),
              );
            }),
      ),
    );
  }
}
