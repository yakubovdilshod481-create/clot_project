import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_elevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: .only(top: 71)),
            Text(
              'Notifications',
              style: GoogleFonts.gabarito(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 204),
            Center(
              child: Image.asset(
                'assets/images/bell.png',
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'No Notification yet',
              style: TextStyle(color: AppColors.textColor, fontSize: 24),
            ),
            SizedBox(height: 24),
            SizedBox(height: 52, width: 185, child: AppElevatedbutton()),
          ],
        ),
      ),
    );
  }
}
