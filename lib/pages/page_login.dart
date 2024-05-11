import 'package:flutter/material.dart';
import 'package:project_WawBeans/pages/page_login_2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page_login_2.dart';

class PageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 106),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ // Jarak antara status bar dan gambar
                _buildImage(),
                _buildWelcomeText(),
                _buildDescriptionText(),
                _buildNextButton(context), // Kirim konteks untuk navigasi
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      height: 404,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/gambar_11.jpeg'),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Padding(
      padding: EdgeInsets.only(top: 22),
      child: Text(
        'Selamat datang di WawBeans!',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 32,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget _buildDescriptionText() {
    return Padding(
      padding: EdgeInsets.only(top: 21),
      child: Text(
        'Nikmati pengalaman pesan kopi tanpa repot dengan layanan kami',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 46),
      child: ElevatedButton(
        onPressed: () {
          // Navigasi ke halaman PageLogin2 saat tombol ditekan
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageLogin2()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFDE6D3D),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
