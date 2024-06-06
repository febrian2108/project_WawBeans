import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'history.dart';
import 'home_page.dart';
import 'keranjang.dart';

class ObrolanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar equivalent container at the top
          Container(
            margin: EdgeInsets.symmetric(horizontal: 36.5, vertical: 36.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Empty space to balance the center title
                SizedBox(width: 7), 
                Text(
                  'Obrolan',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                // Empty space to balance the center title
                SizedBox(width: 7), 
              ],
            ),
          ),
          // Expanded widget to fill the remaining space between title and navbar
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),
                  _buildChatSection(),
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


  Widget _buildChatSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Obrolan Kamu',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 29.5),
        _buildChatItem(
          imageUrl: 'assets/images/foto_restu_1.jpeg',
          name: 'Restu Anggia',
          message: 'Mohon Ditunggu ....',
          date: '30/05/2022',
        ),
        Divider(color: Colors.white),
      ],
    );
  }

  Widget _buildChatItem({
    required String imageUrl,
    required String name,
    required String message,
    required String date,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 36,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Text(
              message,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Text(
          date,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ],
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
                      fontWeight: FontWeight.w700,
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
                    'assets/vectors/chat_on.svg',
                    width: 23.1,
                    height: 22.6,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Obrolan',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 9,
                      color: Color(0xFFDE6D3D),
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
