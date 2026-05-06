import 'package:clot_project/home/core/color/backgroundcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConguratulatePage extends StatefulWidget {
  const ConguratulatePage({super.key});

  @override
  State<ConguratulatePage> createState() => _ConguratulatePageState();
}

class _ConguratulatePageState extends State<ConguratulatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/send.png'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'We sent you an Email to reset\n           your password',
                  style: GoogleFonts.gabarito(
                    color: Bgcolor.backGroundColor,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
