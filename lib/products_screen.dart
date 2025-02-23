import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<String> productList = [
    "All",
    " Electronics And Appliances",
    "SHIRT",
    "Saree",
    "Kid's Wear"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          children: [
            Container(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: productList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Chip(
                          backgroundColor: Color(0xFFFECF6FB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          label: Text(productList[index])),
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFECF6FB),
                          enabled: false,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search)),
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
              height: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12,
                      );
                    },
                    primary: true,
                    itemCount: 8,
                    shrinkWrap: true,
                    itemBuilder: (Context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/icons/chair.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ramni Chair",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              Text(
                                "\$1700",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/minus-circle.png",
                                    height: 16,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  Image.asset(
                                    "assets/icons/plus-circle.png",
                                    height: 16,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              color: Color(0xFFFF5B55),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              onPressed: () {})
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
