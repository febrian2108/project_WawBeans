import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page.dart'; // Impor halaman tujuan untuk navigasi

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF161616),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 19),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 31.7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/vectors/stroke5.svg', 
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Text(
                            'Detail',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/vectors/heart_1_x2.svg',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/gambar_32.png'),
                        ),
                      ),
                      width: double.infinity,
                      height: 207.2,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Cappucino',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFFFFF9F9),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(bottom: 23.4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 13.5),
                                child: Text(
                                  'With Chocolate',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13,
                                    color: Color(0xFFFFF9F9),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/vectors/star_x2.svg',
                                    width: 19.6,
                                    height: 20.4,
                                  ),
                                  SizedBox(width: 8.5),
                                  Text(
                                    '4.8',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Color(0xFFFFF9F9),
                                    ),
                                  ),
                                  SizedBox(width: 10.7),
                                  Text(
                                    '(245)',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Color(0xFFFFF9F9),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/vectors/plus_2_x2.svg',
                                width: 17.5,
                                height: 17.5,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 17.8),
                                child: Text(
                                  '1',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                      SizedBox(
                        width: 17.5,
                        height: 17.5,
                        child: SvgPicture.network(
                          'assets/vectors/plus_4_x2.svg',
                        ),
                      ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 39.1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 9.9),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Deskripsi',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Cappucino adalah minuman berukuran sekitar 150 ml (5 oz), dengan 25 ml kopi espresso dan 85 ml susu segar ... Baca selengkapnya',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.5, 0, 20.5, 29),
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 43.3,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A73E8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Order',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
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
}
