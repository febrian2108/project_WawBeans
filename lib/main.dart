import 'package:flutter/material.dart';
import 'package:project_WawBeans/pages/page_login.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WawBeans!',
      home: Scaffold(

        body: PageLogin(),
        // body: HomePage(),
        // body: OrderPage(),
        // body: PageLogin(),
        // body: PageLogin2(),
        // body: PaymentPage(),

      ),
    );
  }
}
