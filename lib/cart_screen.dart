import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> images = [
    "assets/icons/chair.png",
    "assets/icons/chair2.png",
    "assets/icons/flower.png",
    "assets/icons/cup.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YOUR CART",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        // leading: Icon(
        //   Icons.arrow_back,
        //   color: Colors.black,
        //   size: 32,
        // ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Row(
                children: [
                  Image.asset(images[index]),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ramni Chair",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          "\$1700",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/minus-circle.png",
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "1",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              "assets/icons/plus-circle.png",
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "TOTAL AMOUNT",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "\$1700.00",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                color: Color(0xFFFF5B55),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "CHECKOUT",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "checkout_screen");
                })
          ],
        ),
      ),
    );
  }
}
