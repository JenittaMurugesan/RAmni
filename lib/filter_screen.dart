import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<int> selectedItems = [];
  List<int> selectedBrands = [];
  List<String> items = [
    "Beds",
    "Cabinets",
    "Chairs And Seating",
    "Chests",
    "Clocks"
  ];
  List<String> brands = [
    "Beds",
    "Cabinets",
    "Chairs And Seating",
    "Chests",
    "Clocks"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
        title: Text(
          "Filters",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 12,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(
                        value: selectedItems.contains(index),
                        onChanged: (value) {
                          setState(() {
                            if (selectedItems.contains(index)) {
                              selectedItems.remove(index);
                            } else {
                              selectedItems.add(index);
                            }
                          });
                        },
                        activeColor: Color(0xFFFF1161),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        visualDensity: VisualDensity(horizontal: -2),
                      ),
                      Text(items[index]),
                    ],
                  );
                }),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Brand",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 12,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(
                        value: selectedBrands.contains(index),
                        onChanged: (onChanged) {
                          setState(() {
                            if (selectedBrands.contains(index)) {
                              selectedBrands.remove(index);
                            } else {
                              selectedBrands.add(index);
                            }
                          });
                        },
                        activeColor: Color(0xFFFF1161),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        visualDensity: VisualDensity(horizontal: -2),
                      ),
                      Text(brands[index]),
                    ],
                  );
                })
          ],
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width - 148,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              color: Color(0xFFFF5B55),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "APPLY FILTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        )
      ],
    );
  }
}
