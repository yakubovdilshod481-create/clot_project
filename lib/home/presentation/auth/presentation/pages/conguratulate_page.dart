import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/about_yourself_page.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: .only(top: 270)),
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
                      color: AppColors.textColor,
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutYourselfPage(),
                    ),
                  );
                },
                borderRadius: .circular(100),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: .circular(100),
                    color: AppColors.mainColors,
                  ),
                  child: Center(
                    child: Text(
                      'Return to Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
