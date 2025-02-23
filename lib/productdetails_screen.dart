import 'package:carousel_slider/carousel_slider.dart' as cros;
import 'package:flutter/material.dart';
import 'package:ramni/tabbar_screen.dart';

class ProductdetailsScreen extends StatefulWidget {
  const ProductdetailsScreen({super.key});

  @override
  State<ProductdetailsScreen> createState() => _ProductdetailsScreenState();
}

class _ProductdetailsScreenState extends State<ProductdetailsScreen> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: () {
                _isPressed = !_isPressed;
                setState(() {});
              },
              icon: Image.asset(
                "assets/icons/heart4.png",
                color: _isPressed ? Colors.red : Colors.black12,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
                child: cros.CarouselSlider(
              options: cros.CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                initialPage: 2,
                autoPlay: true,
              ),
              items: [
                Image.asset("assets/icons/image.png"),
                Image.asset("assets/icons/image.png"),
                Image.asset("assets/icons/image.png"),
              ],
            )),
            SizedBox(
              height: 24,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ramni Chair",
                  style: TextStyle(fontSize: 23),
                ),
                SizedBox(
                  width: 18,
                ),
                // AnimatedRatingStars(
                //   initialRating: 2.5,
                //   onChanged: (rating) {
                //     setState(() {
                //       _rating = rating;
                //     });
                //   },
                //   displayRatingValue: true, // Display the rating value
                //   interactiveTooltips: true, // Allow toggling half-star state
                //   customFilledIcon: Icons.star,
                //   customHalfFilledIcon: Icons.star_half,
                //   customEmptyIcon: Icons.star_border,
                //   starSize: 10.0,
                //   animationDuration: const Duration(milliseconds: 500),
                //   animationCurve: Curves.easeInOut,
                // ),
                Icon(
                  Icons.star,
                  color: Color(0xFFFF5B55),
                ),

                Text(
                  '4.5',
                  style: const TextStyle(fontSize: 18.0),
                ),
                Spacer(),
                Text(
                  '\$1700',
                  style: const TextStyle(fontSize: 21.0),
                ),
              ],
            ),

            Expanded(child: TabBarExample())
            // TabBar(
            //     controller: tabController,
            //     indicatorColor: Colors.pinkAccent[100],
            //     labelColor: Colors.pinkAccent[100],
            //     indicatorWeight: 0.5,
            //     unselectedLabelColor: Colors.grey[400],
            //     labelStyle: TextStyle(
            //       fontSize: 14.0,
            //     ),
            //     tabs: [
            //       Tab(
            //         text: 'Description',
            //       ),
            //       Tab(
            //         text: 'Artist',
            //       ),
            //       Tab(text: 'Reviews'),
            //       Tab(text: 'Policy'),
            //     ]),
            // TabBarView(
            //   controller: tabController,
            //   children: [
            //     Text(
            //       "Minimalist styling is not about creating a cold. Hard empty White box of a home.",
            //       style: TextStyle(color: Colors.black, fontSize: 14),
            //     ),
            //     Text("filjwuioer;"),
            //     Text("fljruiet459p"),
            //     Text("giejrop;tgt"),
            //   ],
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFFFF5B55),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 17.0, horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/icons/plus-circle.png"),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset("assets/icons/minus-circle.png")
                  ],
                ),
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(24),
            //     color: Color(0xFFFF5B55),
            //   ),
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 17.0, horizontal: 28),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           "ADD TO CART",
            //           style: TextStyle(fontSize: 16, color: Colors.white),
            //         ),
            //         SizedBox(
            //           width: 12,
            //         ),
            //         Image.asset(
            //           "assets/icons/cart.png",
            //           color: Colors.white,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            MaterialButton(
              color: Color(0xFFFF5B55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "ADD TO CART",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      "assets/icons/cart.png",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
