import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart'; // Impor halaman tujuan untuk navigasi

class PageLogin2 extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF161616),
        ),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 60, 0, 37),
                  child: Text(
                    'Waw Beans!',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Text(
                    'Awali Harimu Dengan Baik.',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                Container(
                  margin: EdgeInsets.fromLTRB(22, 0, 12, 47),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          controller: _usernameController,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xA6929292),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(16, 11.5, 16, 11.5),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xA6929292),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(16, 11.5, 16, 11.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(22, 0, 12.1, 30),
                    decoration: BoxDecoration(
                      color: Color(0xFFDE6D3D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Center(
                      child: Text(
                        'Lanjut',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 19.1, 0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Saya menyetujui ',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color(0xFFFFFFFF),
                      ),
                      children: [
                        TextSpan(
                          text: 'Keterangan Layanan',
                          style: GoogleFonts.getFont(
                            'Poppins',
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
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            decoration: TextDecoration.underline,
                            height: 1.3,
                          ),
                        ),
                        TextSpan(
                          text: 'WawBeans',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PageLogin2(),
    theme: ThemeData(
      primaryColor: Color(0xFF161616),
      scaffoldBackgroundColor: Color(0xFF161616),
    ),
  ));
}
