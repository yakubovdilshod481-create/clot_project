import 'package:clot_project/home/core/color/backgroundcolor.dart';
import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:clot_project/home/core/widget/app_textfield.dart';
import 'package:clot_project/home/core/widget/main_container.dart';
import 'package:clot_project/home/presentation/pages/conguratulate_page.dart';
import 'package:clot_project/home/presentation/pages/create_account_page.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: MainColors.mainColors2,
            ),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => CreateAccountPage()),
              );
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.grey.shade600,
              size: 25,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                color: Bgcolor.backGroundColor,
                fontSize: 30,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: 460,
              child: AppTextfield.textfield(data: 'Enter Email address'),
            ),
            SizedBox(height: 25),
            SizedBox(
              height: 50,
              width: 460,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConguratulatePage(),
                    ),
                  );
                },
                child: MainContainer.mainContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
