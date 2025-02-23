import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderAcceptedScreen extends StatefulWidget {
  const OrderAcceptedScreen({super.key});

  @override
  State<OrderAcceptedScreen> createState() => _OrderAcceptedScreenState();
}

class _OrderAcceptedScreenState extends State<OrderAcceptedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset("assets/icons/completed.json",
                fit: BoxFit.cover, width: 600),
            Text(
              "Your Order ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Has Been Accepted ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Your items has been placed and is on it's way to begin processed",
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "home_screen");
          },
          child: Text(
            "Back to Home",
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFFFF5B55),
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
