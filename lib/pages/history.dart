import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectWawBeans/pages/home_page.dart';
import 'package:projectWawBeans/pages/keranjang.dart';
import 'package:projectWawBeans/pages/obrolan.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container for the History text in the center top
          Container(
            margin: EdgeInsets.fromLTRB(36.5, 36.5, 36.5, 51.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.network(
                  'assets/vectors/stroke_13_x2.svg',
                  width: 7.5,
                  height: 15,
                ),
                Text(
                  'History',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(width: 7), // To balance the alignment with the SVG icon
              ],
            ),
          ),
          // Expanded widget to fill the remaining space between history and navbar
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildOrderItem(
                    imageUrl: 'assets/images/gambar_32.png',
                    title: 'Cappucino',
                    size: 'Size M',
                    description: 'With Chocolate',
                    status: 'Pesanan Sudah Selesai',
                    price: 'Rp 20.000',
                  ),
                  _buildDivider(),
                  _buildOrderItem(
                    imageUrl: 'assets/images/gambar_31.png',
                    title: 'Cappucino',
                    size: 'Size M',
                    description: 'With Oat Milk',
                    status: 'Pesanan Sudah Selesai',
                    price: 'Rp 20.000',
                  ),
                  _buildDivider(),
                ],
              ),
            ),
          ),
          // Navbar at the bottom
          _buildNavbar(context),
        ],
      ),
    );
  }

  Widget _buildOrderItem({
    required String imageUrl,
    required String title,
    required String size,
    required String description,
    required String status,
    required String price,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27, vertical: 8),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 13.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
            height: 96,
            width: 96,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  size,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    SvgPicture.network(
                      'assets/vectors/group_1_x2(1)_1.svg',
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(width: 8),
                    Text(
                      status,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD9D9D9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.3, vertical: 4),
                child: Text(
                  'Pesan Lagi',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      color: Color(0xFFFFFFFF),
      width: double.infinity,
      height: 1,
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
                  width: 23.1,
                  height: 22.6,
                ),
                SizedBox(height: 4),
                Text(
                  'Beranda',
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    color: Colors.white,
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
                  'assets/vectors/vector_21_x2.svg',
                  width: 23.1,
                  height: 22.6,
                ),
                SizedBox(height: 4),
                Text(
                  'History',
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
}

  Widget _buildNavbarItem(String iconPath, String label, Color labelColor, double iconWidth, double iconHeight) {
    return Column(
      children: [
        SvgPicture.network(
          iconPath,
          width: iconWidth,
          height: iconHeight,
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.mulish(
            fontWeight: FontWeight.w400,
            fontSize: 9,
            color: labelColor,
          ),
        ),
      ],
    );
  }
}
