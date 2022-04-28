import 'package:coffee_ui/pages/main_page.dart';
import 'package:coffee_ui/pages/order_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Coffee shop Application',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainPage(),
        '/order': (context) => OrderPage(),
      },
    );
  }
}
