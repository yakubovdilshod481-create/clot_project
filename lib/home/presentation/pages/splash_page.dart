import 'dart:async';

import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:clot_project/home/presentation/pages/sign_in_email_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SplashPage2()),
                );
              },
              borderRadius: .circular(20),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: MainColors.mainColors,
                  borderRadius: .circular(15),
                ),
                child: Center(
                  child: Text(
                    'Clot',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashPage2 extends StatefulWidget {
  const SplashPage2({super.key});

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInEmailPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.mainColors,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(160),
          child: Image.asset('assets/images/Clot.png'),
        ),
      ),
    );
  }
}
