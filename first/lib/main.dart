import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/view/auth/login_screen.dart';
import 'package:first/core/view_model/auth_view_model.dart';
import 'package:first/view/cart_view.dart';
import 'package:first/view/checkout/checkout_view.dart';
import 'package:first/view/detailsView.dart';
import 'package:first/view/home_view.dart';
import 'package:first/view/profil_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
import 'helper/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseOptions androidOptions = FirebaseOptions(
    appId: "1:973785434817:android:b03772ba15ad3bd727e240",
    apiKey: "AIzaSyBXFAX68aGDpQoybvceHm7NqWjIitIjSxM",
    projectId: "ecommerce-d1fae",
    messagingSenderId: "973785434817",
  );
  FirebaseOptions iosOptions = FirebaseOptions(
    appId: "1:973785434817:ios:fa29460cdfab1ca727e240",
    apiKey: "AIzaSyBXFAX68aGDpQoybvceHm7NqWjIitIjSxM",
    projectId: "ecommerce-d1fae",
    messagingSenderId: "Y973785434817",
  );
  FirebaseOptions platformOptions =
      Platform.isAndroid ? androidOptions : iosOptions;
  await Firebase.initializeApp(options: platformOptions);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authViewModel = AuthViewModel();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      home: Scaffold(
        body: CheckOutView(),
      ),
    );
  }
}
