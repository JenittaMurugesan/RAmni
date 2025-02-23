import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ramni/hometwo_screen.dart';
import 'package:ramni/orders_screen.dart';
import 'package:ramni/products_screen.dart';
import 'package:ramni/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final selectedScreen = [ProductsScreen(), HometwoScreen(), ProfileScreen()];
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (pop) {
        showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              title: const Text('Exit'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('Do you want exit the app?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Color(0xFFFF5B55)),
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
                TextButton(
                  child: const Text(
                    'No',
                    style: TextStyle(color: Color(0xFFFF5B55)),
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
      child: Scaffold(
        body: selectedScreen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Color(0xFFFF5B55),
          items: [
            BottomNavigationBarItem(
                label: " ",
                icon: IconButton(
                  onPressed: () {
                    currentIndex = 0;
                    setState(() {});
                  },
                  icon: Image.asset(
                    "assets/icons/orders.png",
                    color: Colors.white,
                  ),
                )),
            BottomNavigationBarItem(
                label: " ",
                icon: IconButton(
                  onPressed: () {
                    currentIndex = 1;
                    setState(() {});
                  },
                  icon:
                      Image.asset("assets/icons/home.png", color: Colors.white),
                )),
            BottomNavigationBarItem(
                label: " ",
                icon: IconButton(
                  onPressed: () {
                    currentIndex = 2;
                    setState(() {});
                  },
                  icon: Image.asset(
                    "assets/icons/user.png",
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
