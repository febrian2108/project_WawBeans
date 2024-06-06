import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF161616),
        padding: EdgeInsets.only(right: 3),
        child: Stack(
          children: [
            Positioned(
              left: -34,
              top: 17,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/image_1.png'),
                  ),
                ),
                width: 474,
                height: 728,
                padding: EdgeInsets.only(top: 34, right: 327.4),
                child: Container(
                  color: Color(0xFF000000),
                  child: Container(
                    width: 26.6,
                    height: 32.7,
                    child: Container(
                      color: Color(0xFFFFFFFF),
                      padding: EdgeInsets.all(9.4),
                      child: SvgPicture.asset('assets/vectors/stroke_112_x2.svg'),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color(0xFF000000),
                padding: EdgeInsets.fromLTRB(26, 16, 25, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 299,
                      child: Text(
                        '5 menit lagi, Jl. Antasari No. 12',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 299,
                      height: 114,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFAEAEAE),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 82,
                            height: 4,
                          ),
                          SizedBox(height: 14),
                          Text(
                            'Mengantar Pesanan Anda Dalam Waktu Singkat',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(4, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: index < 3 ? Color(0xFFDE6D3D) : Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 59,
                                height: 4,
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Image.asset(
                                'assets/images/gambar_101_removebg_preview_2.png',
                                width: 15,
                                height: 20,
                              ),
                            ),
                            Text(
                              'Irfan Maulana',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: SvgPicture.asset('assets/vectors/chat_2_x2.svg'),
                            ),
                            SizedBox(width: 15, height: 15, child: SvgPicture.asset('assets/vectors/iconly_regular_outline_calling_x2.svg')),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Personal Courier',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
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
    );
  }
}
