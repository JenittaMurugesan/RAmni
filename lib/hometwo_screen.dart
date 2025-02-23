import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HometwoScreen extends StatefulWidget {
  const HometwoScreen({super.key});

  @override
  State<HometwoScreen> createState() => _HometwoScreenState();
}

class _HometwoScreenState extends State<HometwoScreen> {
  List<String> categoryList = [
    "All",
    " Electronics And Appliances",
    "SHIRT",
    "Saree",
    "Kid's Wear"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF5B55),
      appBar: AppBar(
        // leading: CircleAvatar(
        //   radius: 10,
        //   child: Text(
        //     "R",
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 26,
        //       color: Color(0xFFFF5B55),
        //     ),
        //   ),
        // ),
        leading: new Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: new BoxDecoration(
            color: Color(0xFFFECF6FB),
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            border: new Border.all(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          child: Text("R",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF5B55))),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        elevation: 1,
        bottomOpacity: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "notification_screen");
              },
              icon: Image.asset("assets/icons/bell.png")),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "cart_screen");
              },
              icon: Image.asset("assets/icons/cart.png"))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        enabled: false,
                        onTap: () {},
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFECF6FB),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      color: Color(0xFFFECF6FB),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "filter_screen");
                          },
                          icon: Image.asset("assets/icons/filter.png")),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "TRENDING PRODUCTS",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFF8B98B4).withOpacity(0.2),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "products_screen");
                        },
                        child: Text(
                          "See All",
                          style:
                              TextStyle(color: Color(0xFFFF5B55), fontSize: 14),
                        ))
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 210,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int i) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "productdetails_screen");
                        },
                        child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0)),
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/Image 1.png",
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Text(
                                    "Panka Chair",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$1000",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 38,
                                      ),
                                      CircleAvatar(
                                        radius: 16,
                                        backgroundColor: Color(0xFFFECF6FB),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            "assets/icons/cart.png",
                                            color: Color(0xFFFF5B55),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "POPULAR CATECORIES",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFF8B98B4).withOpacity(0.2),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "products_screen");
                        },
                        child: Text(
                          "See All",
                          style:
                              TextStyle(color: Color(0xFFFF5B55), fontSize: 14),
                        ))
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 42,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categoryList.length,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Chip(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            backgroundColor: Color(0xFFFECF6FB),
                            label: Text(categoryList[i]),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 210,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int i) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "productdetails_screen");
                        },
                        child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0)),
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Image.asset("assets/icons/Image 1.png"),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Text(
                                    "Panka Chair",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$1000",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 38,
                                      ),
                                      CircleAvatar(
                                        radius: 16,
                                        backgroundColor: Color(0xFFFECF6FB),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            "assets/icons/cart.png",
                                            color: Color(0xFFFF5B55),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
