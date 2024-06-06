import 'package:flutter/material.dart';
import 'package:projectWawBeans/pages/keranjang.dart';
import 'package:projectWawBeans/pages/detail_page.dart';
import 'package:projectWawBeans/pages/history.dart';
import 'package:projectWawBeans/pages/home_page.dart';
import 'package:projectWawBeans/pages/keranjang.dart';
import 'package:projectWawBeans/pages/obrolan.dart';
import 'package:projectWawBeans/pages/order.dart';
import 'package:projectWawBeans/pages/order2.dart';
import 'package:projectWawBeans/pages/order_driver.dart';
import 'package:projectWawBeans/pages/page_login.dart';
import 'package:projectWawBeans/pages/page_login_2.dart';
import 'package:projectWawBeans/pages/paymentpage.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WawBeans!',
      home: Scaffold(

        body: OrderDriver(),

      ),
    );
  }
}
