import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainContainer {
  MainContainer._();
  static Container mainContainer = Container(
    height: 55,
    width: 500,
    decoration: BoxDecoration(
      color: MainColors.mainColors,
      borderRadius: .circular(100),
    ),
    child: Center(
      child: Transform.scale(
        scaleX: 1.0,
        child: Text(
          'Continue',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    ),
  );
}

class MainContainer2 {
  static Widget getContainer({required String image, required String name}) {
    return Container(
      height: 55,
      width: 500,
      decoration: BoxDecoration(
        color: MainColors.mainColors2,
        borderRadius: .circular(100),
      ),
      child: Row(
        children: [
          Padding(padding: .only(left: 15)),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
          SizedBox(width: 100),
          Text(
            name,
            style: GoogleFonts.gabarito(
              color: Colors.black,
              fontSize: 16,
              fontWeight: .w500,
            ),
          ),
        ],
      ),
    );
  }
}
