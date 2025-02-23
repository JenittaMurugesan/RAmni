import 'package:flutter/material.dart';
import 'package:ramni/addaddress_screen.dart';
import 'package:ramni/cart_screen.dart';
import 'package:ramni/checkout_screen.dart';
import 'package:ramni/emailverification_screen.dart';
import 'package:ramni/filter_screen.dart';
import 'package:ramni/forgotpassword_screen.dart';
import 'package:ramni/getstarted_screen.dart';
import 'package:ramni/home_screen.dart';
import 'package:ramni/hometwo_screen.dart';
import 'package:ramni/listaddress_screen.dart';
import 'package:ramni/newpassword_screen.dart';
import 'package:ramni/notification_screen.dart';
import 'package:ramni/notificationdetails_screen.dart';
import 'package:ramni/orderaccepted_screen.dart';
import 'package:ramni/orders_screen.dart';
import 'package:ramni/otp_screen.dart';
import 'package:ramni/productdetails_screen.dart';
import 'package:ramni/products_screen.dart';
import 'package:ramni/profile_screen.dart';
import 'package:ramni/signin_screen.dart';
import 'package:ramni/signup_screen.dart';
import 'package:ramni/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const GetStartedScreen(),
      initialRoute: 'otp_screen',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const GetStartedScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        'signin_screen': (context) => const SignInSCreen(),
        'forgotpassword_screen': (context) => const ForgotPasswordScreen(),
        'emailverification_screen': (context) =>
            const EmailVerificationScreen(),
        'newpassword_screen': (context) => const NewpasswordScreen(),
        'signup_screen': (context) => const SignUpScreen(),
        'otp_screen': (context) => const OtpScreen(),
        'welcome_screen': (context) => const WelcomeScreen(),
        'home_screen': (context) => const HomeScreen(),
        'productdetails_screen': (context) => const ProductdetailsScreen(),
        'notification_screen': (context) => const NotificationScreen(),
        'cart_screen': (context) => const CartScreen(),
        'filter_screen': (context) => const FilterScreen(),
        'products_screen': (context) => const ProductsScreen(),
        'checkout_screen': (context) => const CheckoutScreen(),
        'orders_screen': (context) => const OrdersScreen(),
        'listaddress_screen': (context) => const ListAddress(),
        'orderaccepted_screen': (context) => const OrderAcceptedScreen(),
        'addaddress_screen': (context) => const AddAddressScreen(),
        'hometwo_screen': (context) => const HometwoScreen(),
        'profile_screen': (context) => const ProfileScreen(),
        'notificationdetails_screen': (context) =>
            const NotificationDetailsScreen(),
      },
    );
  }
}
