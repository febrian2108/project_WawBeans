import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart'; // Impor halaman tujuan untuk navigasi

class PageLogin2 extends StatelessWidget {
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
                _buildWelcomeText(),
                SizedBox(height: 1),
                _buildDescriptionText(),
                SizedBox(height: 23),
                _buildPhoneNumberLabel(),
                SizedBox(height: 4),
                _buildPhoneNumberInput(), // Gunakan TextField untuk nomor HP
                SizedBox(height: 25),
                _buildNextButton(context), // Tombol lebih panjang dan lebar
                SizedBox(height: 25),
                _buildFooterText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Text(
      'Selamat datang di WawBeans!',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  Widget _buildDescriptionText() {
    return Text(
      'Masuk atau daftar hanya dalam beberapa langkah mudah.',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  Widget _buildPhoneNumberLabel() {
    return Text(
      'Nomor HP',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, // Pindahkan ke sebelah kiri
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(15),
            color: Color(0xBF707070),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/vectors/contents_1_x2.svg',
                  width: 20,
                  height: 15,
                ),
                SizedBox(width: 5), // Jarak antara gambar dan teks
                Text(
                  '+62',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10), // Jarak antara kotak +62 dan TextField
        Expanded( // Agar TextField mengisi sisa ruang
          child: TextField(
            decoration: InputDecoration(
              hintText: '81X-XXX-XXX', // Placeholder jika belum diisi
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0x7DFFFFFF),
              ),
              border: InputBorder.none, // Hilangkan border tambahan
            ),
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color(0xFFFFFFFF),
            ),
            keyboardType: TextInputType.phone, // Untuk input nomor telepon
          ),
        ),
      ],
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()), // Navigasi ke HomePage
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFDE6D3D),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80), // Memastikan tombol lebih besar
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Lanjut',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  Widget _buildFooterText() {
    return RichText(
      text: TextSpan(
        text: 'Saya menyetujui ',
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 11,
          color: Color(0xFFFFFFFF),
        ),
        children: [
          TextSpan(
            text: 'Keterangan Layanan',
            style: GoogleFonts.poppins(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              fontSize: 11,
              decoration: TextDecoration.underline,
              height: 1.3,
            ),
          ),
          TextSpan(
            text: ' & ',
          ),
          TextSpan(
            text: 'Kebijakan Privasi ',
            style: GoogleFonts.poppins(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              fontSize: 11,
              decoration: TextDecoration.underline,
              height: 1.3,
            ),
          ),
          TextSpan(
            text: 'WawBeans',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
