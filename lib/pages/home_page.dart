import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProfileInfo(),
                SizedBox(height: 20),
                _buildSearch(),
                SizedBox(
                  height: 35,
                ),
                _buildPromoBanner(),
                SizedBox(height: 30),
                _buildMenu(), // Menambahkan widget search
                SizedBox(height: 23),
                _buildMenu2(),
                SizedBox(height: 23),
                _buildNavbar(),
              ],
            ),
          ),
        ),
      ),
    );
  }


//Bagian Profile
  Widget _buildProfileInfo() {
    return Container(
      margin: EdgeInsets.fromLTRB(23, 0, 23, 23),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: double.infinity, // Mengatur lebar sesuai lebar layar
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
                    Text(
                      'Tanjung Seneng Bandar Lampung',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/foto_restu_1.jpeg',
                  ),
                  radius: 23, // Mengatur ukuran radius sesuai kebutuhan
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
//Bagian Profile selesai

//Bagian Search
  Widget _buildSearch() {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: 23), // Mengatur margin horizontal
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
//Bagian search selesai

//Bagian Banner
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

//Bagian Banner Selesai

//Bagian Menu
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
                                      margin: EdgeInsets.fromLTRB(
                                          0, 0.6, 0, 2.6),
                                      width: 12.5,
                                      height: 11.9,
                                      child: SizedBox(
                                        width: 12.5,
                                        height: 11.9,
                                        child: SvgPicture.network(
                                          'assets/vectors/star_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '4.8',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Color(0xFFFFFFFF),
                                      ),
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
                                      margin: EdgeInsets.fromLTRB(
                                          0, 0.6, 0, 2.6),
                                      width: 12.5,
                                      height: 11.9,
                                      child: SizedBox(
                                        width: 12.5,
                                        height: 11.9,
                                        child: SvgPicture.network(
                                          'assets/vectors/star_5_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '4.9',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Color(0xFFFFFFFF),
                                      ),
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
                                      margin: EdgeInsets.fromLTRB(
                                          0, 0.6, 0, 2.6),
                                      width: 12.5,
                                      height: 11.9,
                                      child: SizedBox(
                                        width: 12.5,
                                        height: 11.9,
                                        child: SvgPicture.network(
                                          'assets/vectors/star_3_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '4.9',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                  width: 12.5,
                                  height: 11.9,
                                  child: SizedBox(
                                    width: 12.5,
                                    height: 11.9,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_2_x2.svg',
                                    ),
                                  ),
                                ),
                                Text(
                                  '4.9',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color(0xFFFFFFFF),
                                  ),
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                  width: 12.5,
                                  height: 11.9,
                                  child: SizedBox(
                                    width: 12.5,
                                    height: 11.9,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_7_x2.svg',
                                    ),
                                  ),
                                ),
                                Text(
                                  '4.9',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color(0xFFFFFFFF),
                                  ),
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.6, 0, 2.6),
                                  width: 12.5,
                                  height: 11.9,
                                  child: SizedBox(
                                    width: 12.5,
                                    height: 11.9,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_1_x2.svg',
                                    ),
                                  ),
                                ),
                                Text(
                                  '4.9',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color(0xFFFFFFFF),
                                  ),
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

Widget _buildNavbar() {
  return Container(
    margin: EdgeInsets.fromLTRB(23, 0, 23, 23),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 2, 2, 2),
      border: Border.all(color: Colors.grey), // Menambahkan border dengan warna abu-abu
      borderRadius: BorderRadius.circular(15), // Menambahkan border radius agar terlihat lebih baik
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    ),
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 11.5, 0, 5.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 23.9,
                    height: 24.1,
                    child: SvgPicture.network(
                      'assets/vectors/home_x2.svg',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Beranda',
                    style: GoogleFonts.getFont(
                      'Mulish',
                      fontWeight: FontWeight.w700,
                      fontSize: 9,
                      color: Color(0xFFDE6D3D),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 23.1,
                    height: 23.1,
                    child: SvgPicture.network(
                      'assets/vectors/discount_x2.svg',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Promo',
                    style: GoogleFonts.getFont(
                      'Mulish',
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 23.1,
                    height: 22.6,
                    child: SvgPicture.network(
                      'assets/vectors/buy_1_x2.svg',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Order',
                    style: GoogleFonts.getFont(
                      'Mulish',
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: SvgPicture.network(
                      'assets/vectors/chat_1_x2.svg',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Chat',
                    style: GoogleFonts.getFont(
                      'Mulish',
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

}
