import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFF5B55), Color(0xFFFF1161)])),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "My Orders",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        enabled: false,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFECF6FB),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search"),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                color: Color(0xFFFECF6FB),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/filter.png")),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return index != 3
                      ? Column(
                          children: [
                            Divider(),
                            SizedBox(
                              height: 14,
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Container(
                                  height: 45,
                                  color: Color(0xFFFECF6FB),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Rate & Review",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xFF8B98B4)),
                                        ),
                                        AnimatedRatingStars(
                                          filledColor: Color(0xFFFF5B55),
                                          initialRating: 2.5,
                                          onChanged: (rating) {
                                            setState(() {
                                              _rating = rating;
                                            });
                                          },
                                          displayRatingValue:
                                              false, // Display the rating value
                                          interactiveTooltips:
                                              true, // Allow toggling half-star state
                                          customFilledIcon: Icons.star,
                                          customHalfFilledIcon: Icons.star_half,
                                          customEmptyIcon: Icons.star_border,
                                          starSize: 18.0,
                                          animationDuration:
                                              const Duration(milliseconds: 400),
                                          animationCurve: Curves.easeInOut,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Divider()
                          ],
                        );
                },
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/icons/chair.png"),
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order Placed",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  Text(
                                    "Ramni Chair",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFF8B98B4)),
                                  ),
                                  Text(
                                    "\$1700",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFF8B98B4)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset("assets/icons/path.png"),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
