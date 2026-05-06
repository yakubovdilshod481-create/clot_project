import 'package:clot_project/home/core/color/backgroundcolor.dart';
import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutYourselfPage extends StatefulWidget {
  const AboutYourselfPage({super.key});

  @override
  State<AboutYourselfPage> createState() => _AboutYourselfPageState();
}

class _AboutYourselfPageState extends State<AboutYourselfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(padding: .only(top: 100)),
            Text(
              'Tell us About yourself',
              style: GoogleFonts.gabarito(
                color: Bgcolor.backGroundColor,
                fontSize: 30,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  'Who do you shop for ?',
                  style: TextStyle(
                    color: Bgcolor.backGroundColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                    color: MainColors.mainColors,
                    borderRadius: .circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'Men',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                    color: MainColors.mainColors2,
                    borderRadius: .circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'Woman',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'How Old are you ?',
              style: TextStyle(color: Bgcolor.backGroundColor, fontSize: 16),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
