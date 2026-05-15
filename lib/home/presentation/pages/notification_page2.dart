import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage2 extends StatefulWidget {
  const NotificationPage2({super.key});

  @override
  State<NotificationPage2> createState() => _NotificationPage2State();
}

class _NotificationPage2State extends State<NotificationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              'Notifications',
              style: GoogleFonts.gabarito(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 240,
              width: double.infinity,
              child: AppNotifications(),
            ),
          ],
        ),
      ),
    );
  }
}
