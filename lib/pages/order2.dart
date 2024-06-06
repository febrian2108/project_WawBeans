import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectWawBeans/pages/order.dart';
import 'detail_page.dart'; // Pastikan Anda sudah mengimpor file detail_page.dart
import 'order2.dart'; // Impor file order2.dart
import 'paymentpage.dart'; // Impor file paymentpage.dart

class OrderPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF161616),
        child: Padding(
          padding: EdgeInsets.only(bottom: 17),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAppBar(context),
                  SizedBox(height: 5),
                  _buildOrderType(context),
                  SizedBox(height: 25),
                  _buildAlamat(context),
                  SizedBox(height: 10),
                  _buildDetail(context),
                  SizedBox(height: 10),
                  _buildPaymentDetails(),
                  SizedBox(height: 10),
                  _buildTotalPayment(),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPayment(context),
                    _buildPesanButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 25.5),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/vectors/kembali2.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage()),
              );
            },
          ),
          Text(
            'Detail Pesanan',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(width: 48), // Spacer untuk mengimbangi IconButton
        ],
      ),
    );
  }

  Widget _buildOrderType(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 350,
          padding: EdgeInsets.fromLTRB(3, 2, 3.5, 2.7),
          child: Row(
            children: [
              _buildOrderTypeOption('Pesan Antar', Color(0xFFD9D9D9), Color(0xFF000000), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderPage()),
                );
              }),
              _buildOrderTypeOption('PickUp', Color(0xFFDE6D3D), Color(0xFFFFFFFF), () {
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderTypeOption(String text, Color backgroundColor, Color textColor, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2.35),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 10.5),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAlamat(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 34, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 7),
            child: Text(
              'Alamat',
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Text(
            'Jl. Ryacudu, Way Dadi, Kec. Sukarame, Kota Bandar Lampung, Lampung',
            style: GoogleFonts.getFont(
              'Poppins',
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildDetail(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cappucino',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 16.8),
                      child: SvgPicture.asset(
                        'assets/vectors/group_57_x2.svg',
                        width: 21,
                        height: 21,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/vectors/plus_4_x2.svg',
                    width: 17.5,
                    height: 17.5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.9),
                    child: Text(
                      '1',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/vectors/plus_2_x2.svg',
                    width: 17.5,
                    height: 17.5,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            'Size M',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(height: 2),
          Text(
            'With Chocolate',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(height: 8.4),
          Text(
            'Rp 20.000',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetails() {
    return Container(
      margin: EdgeInsets.fromLTRB(31.6, 0, 34.1, 19.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'Total Pembayaran',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
          ),
          _buildPaymentDetailRow('Harga', 'Rp 20.000'),
          Container(
            margin: EdgeInsets.only(top: 7),
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetailRow(String title, String value) {
    return Container(
      margin: EdgeInsets.only(left: 2.3, top: 0.8, bottom: 1.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalPayment() {
    return Container(
      margin: EdgeInsets.fromLTRB(30.5, 0, 33.6, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total Pembayaran',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Text(
            'Rp 20.000',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPayment(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.1, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/vectors/icon_tunai_x2.svg',
                  ),
                ),
              ),
              Text(
                'Rp 20.000',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              );
            },
            child: Container(
              width: 18.5,
              height: 18.5,
              child: SvgPicture.asset(
                'assets/vectors/more_circle_x2(1).svg',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPesanButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.1, vertical: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentPage()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(9, 0, 5.6, 0),
              decoration: BoxDecoration(
                color: Color(0xFFDE6D3D),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  'Bayar',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
