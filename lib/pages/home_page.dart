import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectWawBeans/pages/history.dart';
import 'package:projectWawBeans/pages/keranjang.dart';
import 'package:projectWawBeans/pages/obrolan.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileInfo(),
                SizedBox(height: 20),
                _buildSearch(),
                SizedBox(height: 35),
                _buildPromoBanner(),
                SizedBox(height: 30),
                _buildMenu(),
                SizedBox(height: 23),
                _buildMenu2(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildNavbar(context),
    );
  }

  Widget _buildSearch() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23), // Mengatur margin horizontal
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 104, 104, 104),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/vectors/search_x2.svg',
              width: 15.6,
              height: 16,
              color: Color(0x7DFFFFFF),
            ),
          ),
          Expanded(
            child: TextField(
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0x7DFFFFFF),
              ),
              decoration: InputDecoration(
                hintText: 'Search coffee',
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0x7DFFFFFF),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/vectors/filter_1_x2.svg',
              width: 16.7,
              height: 14.8,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -23,
            left: 0,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 1,
                sigmaY: 1,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'assets/images/gambar_2.jpeg',
                    ),
                  ),
                ),
                child: Container(
                  width: 371,
                  height: 179.3,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 371,
            height: 180.6,
            child: Container(
              padding: EdgeInsets.fromLTRB(18.7, 23, 0, 40.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 19.4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFDE3D3D),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8.6, 2.4, 9.7, 4.4),
                        child: Text(
                          'Promo',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.2, 0, 0.2, 0),
                    child: Text(
                      'Buy one get one FREE',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(0xFFFFFFFF),
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
  );
  }

  Widget _buildMenu() {
    return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Bagian menu bar
      Container(
        padding: EdgeInsets.fromLTRB(0, 11.5, 0, 5.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDE6D3D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8, 7, 7, 6),
                      child: Text(
                        'Cappucino',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(14.2, 7, 13.2, 6),
                    child: Text(
                      'Machiato',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF130F26),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(1, 7, 0, 6),
                    child: Text(
                      'Latte',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF130F26),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(19.5, 7, 19.5, 6),
                    child: Text(
                      'Arabika',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF130F26),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      // Bagian daftar menu varian cappuccino
      Container(
        margin: EdgeInsets.fromLTRB(27, 0, 27, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 21, 0),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'assets/images/gambar_32.png',
                                ),
                              ),
                            ),
                            child: SizedBox(
                              height: 100,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(6.2, 4, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 16, 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Cappuccino',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'With Chocolate',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 7,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Rp 20.000',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'assets/images/gambar_31.png',
                                ),
                              ),
                            ),
                            child: SizedBox(
                              height: 100,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(6.2, 4, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 16, 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Cappuccino',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'With Oat Milk',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 7,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Rp 20.000',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'assets/images/gambar_35.jpeg',
                                ),
                              ),
                            ),
                            child: SizedBox(
                              height: 100,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(6.2, 4, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 16, 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Cappuccino',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'With Vanilla',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 7,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Rp 20.000',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
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
  );
  }

  Widget _buildMenu2() {
    return Container(
    margin: EdgeInsets.fromLTRB(30, 0, 27, 35.9),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 3, 18, 0),
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'assets/images/gambar_33.png',
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 100,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(6.2, 4, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 16, 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Cappuccino',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'With Chocolate',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 7,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Rp 20.000',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 23, 4),
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'assets/images/gambar_3.jpeg',
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 100,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(6.2, 4, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 16, 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Cappuccino',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'With Oat Milk',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 7,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Rp 20.000',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'assets/images/gambar_34.jpeg',
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 100,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(6.2, 4, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 16, 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Cappuccino',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'With Vanilla',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 7,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Rp 20.000',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
                  'assets/vectors/home_x2.svg',
                  width: 23.1,
                  height: 22.6,
                ),
                SizedBox(height: 4),
                Text(
                  'Beranda',
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
                MaterialPageRoute(builder: (context) => HistoryPage()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/vectors/vector_12_x2_1.svg',
                  width: 23.1,
                  height: 22.6,
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
                  'assets/vectors/buy_6_1_1x2.svg',
                  width: 23.1,
                  height: 22.6,
                ),
                SizedBox(height: 4),
                Text(
                  'Keranjang',
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
}}
class ProfileInfo extends StatefulWidget {
  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  String _selectedLocation = 'Tanjung Seneng Bandar Lampung';
  List<String> _locations = ['Tanjung Seneng Bandar Lampung', 'Gunung Sulah Bandar Lampung'];
  int _selectedLocationIndex = 0;

  void _toggleLocation() {
    setState(() {
      _selectedLocationIndex = (_selectedLocationIndex + 1) % _locations.length;
      _selectedLocation = _locations[_selectedLocationIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(23, 0, 23, 23),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 1, 1, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    GestureDetector(
                      onTap: _toggleLocation,
                      child: Row(
                        children: [
                          Text(
                            _selectedLocation,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(width: 5),
                          SvgPicture.asset(
                            'assets/vectors/stroke_111_x2.svg',
                            width: 11.7,
                            height: 5.8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/foto_restu_1.jpeg',
                  ),
                  radius: 23,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}