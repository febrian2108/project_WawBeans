import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectWawBeans/pages/history.dart';
import 'package:projectWawBeans/pages/home_page.dart';
import 'package:projectWawBeans/pages/keranjang.dart';
import 'package:projectWawBeans/pages/obrolan.dart';
import 'package:projectWawBeans/pages/order.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 3, 16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.0), // Adjust top margin as needed
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.5),
                      width: 7,
                      height: 14,
                      child: SvgPicture.asset(
                        'assets/vectors/stroke_14_x2.svg',
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Pembayaran',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(11, 0, 6, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildPaymentOption(
                      'Bayar ditempat/COD',
                      'assets/vectors/group_3_x2_1.svg',
                      selected: true,
                    ),
                    buildPaymentOption(
                      'GoPay',
                      'assets/vectors/vector_8_x2.svg',
                      soon: true,
                    ),
                    buildPaymentOption(
                      'DANA',
                      'assets/vectors/arcticonsdana_x2.svg',
                      soon: true,
                    ),
                    buildPaymentOption(
                      'Virtual Akun',
                      'assets/vectors/group_x2.svg',
                      soon: true,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(9, 0, 5.6, 0),
                decoration: BoxDecoration(
                  color: Color(0xFFDE6D3D),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(
                    'Oke',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPaymentOption(String text, String asset, {bool selected = false, bool soon = false}) {
    return Container(
      margin: EdgeInsets.only(bottom: 22.5),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
        border: selected ? Border.all(color: Color(0xFF000000)) : null,
      ),
      padding: EdgeInsets.fromLTRB(18, 13.5, 40, 14.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 22, top: 0.5),
                width: 24,
                height: 24,
                child: SvgPicture.asset(asset),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          if (soon)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.3, vertical: 2),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xFFDE6D3D)),
              ),
              child: Text(
                'Soon',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  color: Color(0xFFDE6D3D),
                ),
              ),
            )
          else if (selected)
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(11.5),
              ),
              width: 23,
              height: 23,
              padding: EdgeInsets.all(3.9),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDE6D3D),
                  borderRadius: BorderRadius.circular(7.5),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
