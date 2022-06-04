import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanRegistrasi extends StatefulWidget {
  const HalamanRegistrasi({super.key});

  @override
  State<HalamanRegistrasi> createState() => _HalamanRegistrasiState();
}

class _HalamanRegistrasiState extends State<HalamanRegistrasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border(
                left: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
                top: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
                right: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
                bottom: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
              ),
            ),
            child: SafeArea(
              left: false,
              top: false,
              right: false,
              bottom: false,
              child: IndexedStack(
                index: 0,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * (15 / 100),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(r'''Registrasi''',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                  maxLines: 1),
                              Text(
                                  r'''Selesaikan langkah ini untuk registrasi''',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                  maxLines: 1),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * (5 / 100),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        height: MediaQuery.of(context).size.height * (70 / 100),
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          padding: EdgeInsets.zero,
                          width: double.maxFinite,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            border: Border(
                              left: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFFF0F0F0)),
                              top: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFFF0F0F0)),
                              right: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFFF0F0F0)),
                              bottom: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFFF0F0F0)),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              top: 24,
                              right: 24,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(r'''Nama Lengkap''',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF3A4F66),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 25,
                                  ),
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD1D1D1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    border: null,
                                  ),
                                  child: TextField(
                                    onChanged: (String value) async {},
                                    onSubmitted: (String value) async {},
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: r'''Cth.  Eko Saputra''',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        bottom: 16,
                                      ),
                                    ),
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1,
                                    minLines: 1,
                                    maxLength: null,
                                    obscureText: false,
                                    showCursor: true,
                                    autocorrect: false,
                                  ),
                                ),
                                Text(r'''Email Anda''',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF3A4F66),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 25,
                                  ),
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD1D1D1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    border: null,
                                  ),
                                  child: TextField(
                                    onChanged: (String value) async {},
                                    onSubmitted: (String value) async {},
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: r'''Cth. email@bengkol.id''',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        bottom: 16,
                                      ),
                                    ),
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1,
                                    minLines: 1,
                                    maxLength: null,
                                    obscureText: false,
                                    showCursor: true,
                                    autocorrect: false,
                                  ),
                                ),
                                Text(r'''No  HandPhone''',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF3A4F66),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 25,
                                  ),
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD1D1D1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    border: null,
                                  ),
                                  child: TextField(
                                    onChanged: (String value) async {},
                                    onSubmitted: (String value) async {},
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: r'''Cth. 08xxxx''',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                    ),
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1,
                                    minLines: 1,
                                    maxLength: null,
                                    obscureText: false,
                                    showCursor: true,
                                    autocorrect: false,
                                  ),
                                ),
                                Text(r'''Password Anda''',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF3A4F66),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 40,
                                  ),
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD1D1D1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    border: null,
                                  ),
                                  child: TextField(
                                    onChanged: (String value) async {},
                                    onSubmitted: (String value) async {},
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: r'''**********''',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                    ),
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 1,
                                    minLines: 1,
                                    maxLength: null,
                                    obscureText: true,
                                    showCursor: true,
                                    autocorrect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.zero,
                                  child: GestureDetector(
                                    onTap: () async {},
                                    onLongPress: () async {},
                                    child: Container(
                                        width: double.maxFinite,
                                        height: 48,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF34A853),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                          ),
                                          border: null,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'REGISTRASI',
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
