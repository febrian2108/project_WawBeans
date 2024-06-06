import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectWawBeans/pages/paymentpage.dart';
import 'home_page.dart';
import 'history.dart';
import 'keranjang.dart';
import 'obrolan.dart';
import 'paymentpage.dart'; // Pastikan untuk mengimpor halaman metode_pembayaran

class KeranjangPage extends StatefulWidget {
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  int itemCount = 1;

  void incrementItemCount() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItemCount() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar equivalent container at the top
          Container(
            margin: EdgeInsets.symmetric(vertical: 36.5),
            child: Center(
              child: Text(
                'Keranjang',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Expanded widget to fill the remaining space between title and navbar
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(27, 20, 28, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(1, 0, 3.5, 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/gambar_32.png'),
                                ),
                              ),
                              height: 114,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 4.6, 77.5, 11),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(1, 0, 3.6, 7.6),
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 12.4),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Text(
                                          'Cappucino',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          bottom: -12.4,
                                          child: SizedBox(
                                            height: 15,
                                            child: Text(
                                              'With Chocolate',
                                              style: GoogleFonts.poppins(
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
                                  Container(
                                    margin: EdgeInsets.fromLTRB(1.2, 0, 18.4, 0),
                                    child: Text(
                                      'Rp 20.000',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 44.9, 0, 45.1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: decrementItemCount,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 3.6, 18.2, 2.9),
                                      width: 17.5,
                                      height: 17.5,
                                      child: SvgPicture.asset(
                                        'assets/vectors/min_5_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 17.8, 0),
                                    child: Text(
                                      '$itemCount',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: incrementItemCount,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 2.8, 0, 3.7),
                                      width: 17.5,
                                      height: 17.5,
                                      child: SvgPicture.asset(
                                        'assets/vectors/plus_3_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 0, 18.1, 10),
              decoration: BoxDecoration(
                color: Color(0xFFDE6D3D),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Text(
                  'Pesan',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          _buildNavbar(context), // Navbar at the bottom
        ],
      ),
    );
  }

  Widget _buildNavbar(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF000000),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/vectors/home_4_x2_1.svg',
                    width: 19,
                    height: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Beranda',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/vectors/vector_12_x2_1.svg',
                    width: 26.3,
                    height: 22.5,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'History',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KeranjangPage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/vectors/keranjang_on.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Keranjang',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 9,
                      color: Color(0xFFDE6D3D),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ObrolanPage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/vectors/chat_3_x2.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Obrolan',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
