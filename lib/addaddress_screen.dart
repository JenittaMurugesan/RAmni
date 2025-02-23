import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _AlternatePhoneNumberController = TextEditingController();
  final _pincodeController = TextEditingController();
  final _stateController = TextEditingController();
  final _cityController = TextEditingController();
  final _houseNoController = TextEditingController();
  final _roadNameController = TextEditingController();
  final _famousAreaController = TextEditingController();
  int _selectedValue = 0;
  bool isAltMobile = true;
  bool isNearArea = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Text(
          "Add Address ",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFF5B55), Color(0xFFFF1161)])),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _fullNameController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Full Name";
                        }
                        return null;
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFECF6FB),
                        hintText: "Full Name (Required)*",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextFormField(
                      controller: _phoneNumberController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Phone Number";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFECF6FB),
                        hintText: "Phone Number (Required)*",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    isAltMobile
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                                onPressed: () {
                                  isAltMobile = false;
                                  setState(() {});
                                },
                                child: Text(
                                  "+Add Alternate Phone Number",
                                  style: TextStyle(color: Color(0xFFFF5B55)),
                                )),
                          )
                        : TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFECF6FB),
                              labelText: "Add Alternate Phone Number",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFECF6FB),
                              labelText: "Pincode (Required*)",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            color: Color(0xFFFF5B55),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_searching_sharp,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Use my location",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            onPressed: () {})
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(

                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFECF6FB),
                              labelText: "State (Required*)",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: TextFormField(

                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFECF6FB),
                              labelText: "City (Required*)",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFECF6FB),
                        hintText: "House No., Building Name (Required)*",
                        labelText: "House No., Building Name (Required)*",
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFECF6FB),
                        hintText: "Road name,Area,Colony (Required)*",
                        labelText: "Road name,Area,Colony (Required*)",
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    isNearArea
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                                onPressed: () {
                                  isNearArea = false;
                                  setState(() {});
                                },
                                child: Text(
                                  "+Add Nearby Famous Shop/Mall/Landmar",
                                  style: TextStyle(color: Color(0xFFFF5B55)),
                                )),
                          )
                        : TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFECF6FB),
                              labelText: "+Add Nearby Famous Shop/Mall/Landmar",
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Type of address"),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 64,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FilterChip(
                      selected: _selectedValue == 1,
                      checkmarkColor: Colors.white,
                      color: WidgetStatePropertyAll(_selectedValue == 1
                          ? Color(0xFFFF5B55)
                          : Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.home,
                                color: _selectedValue == 1
                                    ? Colors.white
                                    : Colors.grey),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                  color: _selectedValue == 1
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                      ),
                      onSelected: (_) {
                        _selectedValue = 1;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    FilterChip(
                      checkmarkColor: Colors.white,
                      selected: _selectedValue == 2,
                      color: WidgetStatePropertyAll(_selectedValue == 2
                          ? Color(0xFFFF5B55)
                          : Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.work,
                              color: _selectedValue == 2
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Work",
                              style: TextStyle(
                                  color: _selectedValue == 2
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                      ),
                      onSelected: (_) {
                        _selectedValue = 2;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    FilterChip(
                      selected: _selectedValue == 3,
                      checkmarkColor: Colors.white,
                      color: WidgetStatePropertyAll(_selectedValue == 3
                          ? Color(0xFFFF5B55)
                          : Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_searching_sharp,
                                color: _selectedValue == 3
                                    ? Colors.white
                                    : Colors.grey),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Other",
                              style: TextStyle(
                                  color: _selectedValue == 3
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                      ),
                      onSelected: (_) {
                        _selectedValue = 3;
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: MaterialButton(

                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Color(0xFFFF5B55),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Save Address",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
