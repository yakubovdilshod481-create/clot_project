import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/presentation/model/notifications_models/notifications_model.dart';
import 'package:flutter/material.dart';

class AppNotifications extends StatelessWidget {
  List<Notificationsmodel> notificationModel = [
    Notificationsmodel(
      image: 'assets/images/notification.png',
      bodytext:
          'Gilbert, you placed and order check your\norder history for full details',
    ),
    Notificationsmodel(
      image: 'assets/images/notification2.png',
      bodytext:
          'Gilbert, Thank you for shopping with us we\nhave canceled order #24568.',
    ),
    Notificationsmodel(
      image: 'assets/images/notification2.png',
      bodytext:
          'Gilbert, your Order #24568 has been\nconfirmed check your order history for full details',
    ),
  ];
  AppNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          final notification = notificationModel[index];
          return Container(
            height: 72,
            width: 342,
            decoration: BoxDecoration(
              color: AppColors.mainColors2,
              borderRadius: .circular(8),
            ),
            child: Padding(
              padding: .all(17),
              child: Row(
                children: [
                  Image.asset(notification.image, height: 24, width: 24),
                  SizedBox(width: 29),
                  Column(
                    children: [
                      Text(
                        notification.bodytext,
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
        itemCount: 3,
      ),
    );
  }
}
