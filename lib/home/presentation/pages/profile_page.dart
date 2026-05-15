import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(24),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  foregroundImage: AssetImage('assets/images/avatar.png'),
                ),
                SizedBox(height: 32),
                Container(
                  height: 106,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: .circular(8),
                    color: AppColors.mainColors2,
                  ),
                  child: Padding(
                    padding: .only(left: 16, top: 13, bottom: 8, right: 20),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Gilbert Jones',
                          style: GoogleFonts.gabarito(
                            color: AppColors.textColor,
                            fontSize: 16,
                            fontWeight: .w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Glbertjones001@gmail.com',
                              style: TextStyle(
                                color: AppColors.textcolor2,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Edit',
                              style: TextStyle(
                                color: AppColors.mainColors,
                                fontSize: 12,
                                fontWeight: .w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '121-224-7890',
                          style: TextStyle(
                            color: AppColors.textcolor2,
                            fontSize: 16,
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
