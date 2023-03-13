import 'package:flutter/material.dart';
import 'package:flutter_application_tester/screens/main.dart';
// import 'screens/home_page.dart';
// import 'screens/detail_product_page.dart';
// import 'screens/product_page.dart';
// import 'screens/reports_page.dart';
// import 'screens/detail_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OpenSans',
      ),
      debugShowCheckedModeBanner: false,
      home: const Main(),
    );
  }
}
