import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget navigator;
  final String button;
  const AppContainer({
    super.key,
    required this.button,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigator),
          );
        },
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.mainColors,
            borderRadius: .circular(100),
          ),
          child: Center(
            child: Text(
              button,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

class AppContainer2 extends StatelessWidget {
  final String text;
  final String image;
  const AppContainer2({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        borderRadius: .circular(100),
        onTap: () {},
        child: Container(
          height: 49,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.mainColors2,
            borderRadius: .circular(100),
          ),
          child: Stack(
            alignment: .center,
            children: [
              Positioned(
                left: 19.42,
                child: Image.asset(image, width: 27, height: 27, fit: .contain),
              ),
              Center(
                child: Transform.scale(
                  scaleX: 1.2,
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16, fontWeight: .bold),
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
