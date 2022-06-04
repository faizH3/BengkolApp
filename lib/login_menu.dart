import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_6/halam_registrasi.dart';
import 'package:flutter_application_6/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMenu extends StatefulWidget {
  const LoginMenu({super.key});

  @override
  State<LoginMenu> createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 80,
                    ),
                    child: Text(r'''Masuk''',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(r'''Selesaikan langkah ini untuk masuk''',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      top: 100,
                      right: 12,
                    ),
                    child: Container(
                      margin: EdgeInsets.zero,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        border: Border(
                          left: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                          top: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                          right: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                          bottom: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Color(0xFF000000)),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                            ),
                            child: Text(r'''Email''',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color(0xFF3A4F66),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                                maxLines: 1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 16,
                              top: 8,
                              right: 16,
                              bottom: 8,
                            ),
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD1D1D1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              border: null,
                            ),
                            child: TextField(
                              controller: _emailController,
                              // onChanged: (String value) async {},
                              // onSubmitted: (String value) async {},
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                hintText: r'''Cth. mail@bengkol.id''',
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
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                            ),
                            child: Text(r'''Password''',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Color(0xFF3A4F66),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                                maxLines: 1),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 16,
                              top: 8,
                              right: 16,
                              bottom: 8,
                            ),
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD1D1D1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              border: null,
                            ),
                            child: TextField(
                              controller: _passwordController,
                              // onChanged: (String value) async {},
                              // onSubmitted: (String value) async {},
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                hintText: 'password',
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
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 20,
                              right: 15,
                            ),
                            child: Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: Color(0xFF000000),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                ),
                              ),
                              child: MaterialButton(
                                // onTap: () async {},
                                // onLongPress: () async {},
                                onPressed: () async {
                                  User? user = await loginUsingEmailPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                      context: context);
                                  print(user);
                                  if (user != null) {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) {
                                      return HomePage();
                                    }));
                                  }
                                },
                                child: Container(
                                    width: double.maxFinite,
                                    height: 48,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF3285FF),
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
                                        'MASUK',
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 20,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: Color(0xFF000000),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HalamanRegistrasi(),
                                    ),
                                  );
                                },
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
                          ),
                        ],
                      ),
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
}
