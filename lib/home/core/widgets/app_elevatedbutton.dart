import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedbutton extends StatelessWidget {
  const AppElevatedbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(185, 52),
          backgroundColor: AppColors.mainColors,
          foregroundColor: Colors.white,
        ),
        onPressed: () {},
        child: Text('Explore Categories', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
