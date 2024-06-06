import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_page.dart'; // Pastikan Anda sudah mengimpor file detail_page.dart
import 'order2.dart'; // Impor file order2.dart
import 'paymentpage.dart'; // Impor file paymentpage.dart

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF161616),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 17),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAppBar(context), // Mengirim context ke _buildAppBar
                  _buildOrderType(context), // Mengirim context ke _buildOrderType
                  _buildPaymentDetails(),
                  _buildTotalPayment(),
                  _buildDetail(),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPayment(context), // Tambahkan _buildPayment
                    _buildPesanButton(context), // Tambahkan tombol Pesan
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) { // Terima context sebagai parameter
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 25.5),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/vectors/kembali2.svg'),
            onPressed: () {
              // Tambahkan navigasi ke detail_page.dart
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

  Widget _buildOrderType(BuildContext context) { // Terima context sebagai parameter
    return Container(
      margin: EdgeInsets.only(bottom: 241.2),
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
              _buildOrderTypeOption('Pesan Antar', Color(0xFFDE6D3D), Color(0xFFFFFFFF), () {}),
              _buildOrderTypeOption('PickUp', Color(0xFFD9D9D9), Color(0xFF000000), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order2Page()),
                );
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

  Widget _buildDetail() {
    return Positioned(
      left: 34,
      top: 209,
      child: SizedBox(
        width: 351,
        height: 177,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 80.6),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 21,
                                height: 21,
                                child: SvgPicture.network(
                                  'assets/vectors/group_58_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 1.7, 8.4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 11.5, 6),
                                  child: SizedBox(
                                    width: 229.5,
                                    child: Text(
                                      'Cappucino',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 6.4, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 16.8, 1.6),
                                        child: SizedBox(
                                          width: 21,
                                          height: 21,
                                          child: SvgPicture.network(
                                            'assets/vectors/group_57_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2.8, 14.6, 2.4),
                                        width: 17.5,
                                        height: 17.5,
                                        child: SizedBox(
                                          width: 17.5,
                                          height: 17.5,
                                          child: SvgPicture.network(
                                            'assets/vectors/plus_4_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 1.6, 15.9, 0),
                                        child: Text(
                                          '1',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2.8, 0, 2.4),
                                        width: 17.5,
                                        height: 17.5,
                                        child: SizedBox(
                                          width: 17.5,
                                          height: 17.5,
                                          child: SvgPicture.network(
                                            'assets/vectors/plus_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Size M',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 17,
                      child: SizedBox(
                        height: 15,
                        child: Text(
                          'With Chocolate',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.2, 0, 0.2, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Rp 20.000',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentDetails() {
    return Container(
      margin: EdgeInsets.fromLTRB(31.6, 0, 34.1, 19.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Pembayaran',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
          ),
          _buildPaymentDetailRow('Harga', 'Rp 20.000'),
          _buildPaymentDetailRow('Ongkir', 'Rp 5000'),
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
            'Rp 25.000',
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
                'Rp 25.000',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Color(0xFFDE6D3D),
                ),
              ),
            ],
          ),
          Container(
            width: 18.5,
            height: 18.5,
            child: SvgPicture.asset(
              'assets/vectors/more_circle_x2.svg',
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
              color: Color(0xFFFFA500), // Warna oranye
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
            ),
            width: 289.2,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Pesan',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Color(0xFFFFFFFF), // Warna putih
              ),
            ),
          ),
        ),
      ),
    );
  }
}
