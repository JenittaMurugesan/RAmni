import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:share_plus/share_plus.dart';

class ListAddress extends StatefulWidget {
  const ListAddress({super.key});

  @override
  State<ListAddress> createState() => _ListAddressState();
}

class _ListAddressState extends State<ListAddress> {
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
          "Address",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFFECF6FB),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "SAVED ADDRESS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      "assets/icons/map-pin.png",
                      height: 26,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "No 27, 9th Sector, KK nagar, Chennai - 600078, India Phone number:9655867548",
                          maxLines: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Text(
                                "EDIT",
                                style: TextStyle(
                                    color: Color(0xFFFF5B55),
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "addaddress_screen");
                              },
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            InkWell(
                                onTap: () {
                                  print("delete");
                                  showDialog<void>(
                                    context: context,
                                    barrierDismissible:
                                        false, // user must tap button!
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.white,
                                        title: const Text('Delete Address'),
                                        content: const SingleChildScrollView(
                                          child: ListBody(
                                            children: <Widget>[
                                              Text(
                                                  'Do you want delete the address?'),
                                            ],
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            child: const Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Color(0xFFFF5B55)),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          TextButton(
                                            child: const Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Color(0xFFFF5B55)),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  "DELETE",
                                  style: TextStyle(color: Color(0xFFFF5B55)),
                                )),
                            SizedBox(
                              width: 12,
                            ),
                            InkWell(
                                onTap: () async {
                                  // Share.shareUri(Uri.parse(
                                  //     "https://maps.app.goo.gl/objQ8NX6VmMtQefUA"));
                                },
                                child: Text(
                                  "SHARE",
                                  style: TextStyle(color: Color(0xFFFF5B55)),
                                ))
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
