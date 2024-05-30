import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page_login_2.dart';

class page_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF000000),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 2), // Adjust this value to center the content
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/gambar_1.png',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50), // Space between image and text
              Text(
                'Selamat Datang di WawBeans!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(height: 20), // Space between texts
              Text(
                'Nikmati pengalaman pesan kopi tanpa repot dengan layanan kami.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(height: 50), // Space between text and button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageLogin2()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDE6D3D),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                  child: Text(
                    'Mulai',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 3), // Adjust this value to center the content
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: page_login(),
    routes: {
      '/login': (context) => PageLogin2(),
    },
  ));
}
