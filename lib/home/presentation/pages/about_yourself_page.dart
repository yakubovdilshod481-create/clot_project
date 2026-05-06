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
  int change = 0;
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      change = 0;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                      color: change == 0
                          ? MainColors.mainColors
                          : MainColors.mainColors2,
                      borderRadius: .circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Men',
                        style: TextStyle(
                          color: change == 0 ? Colors.white : Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      change = 1;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                      color: change == 1
                          ? MainColors.mainColors
                          : MainColors.mainColors2,
                      borderRadius: .circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Woman',
                        style: TextStyle(
                          color: change == 1 ? Colors.white : Colors.black,
                          fontSize: 17,
                        ),
                      ),
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
            Container(
              height: 60,
              width: 460,
              decoration: BoxDecoration(
                color: MainColors.mainColors2,
                borderRadius: .circular(100),
              ),
              child: Row(
                children: [
                  Padding(padding: .only(left: 20)),
                  Text(
                    'Age Range',
                    style: TextStyle(
                      color: Bgcolor.backGroundColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 300),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey.shade700,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
