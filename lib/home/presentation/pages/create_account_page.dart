import 'package:clot_project/home/core/color/backgroundcolor.dart';
import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:clot_project/home/core/widget/app_textfield.dart';
import 'package:clot_project/home/core/widget/main_container.dart';
import 'package:clot_project/home/presentation/pages/forgot_password_page.dart';
import 'package:clot_project/home/presentation/pages/sign_in_password_page.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
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
                MaterialPageRoute(builder: (context) => SignInPasswordPage()),
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
            Transform.scale(
              scaleX: 1.10,
              child: Row(
                children: [
                  Padding(padding: .only(left: 20)),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      color: Bgcolor.backGroundColor,
                      fontSize: 30,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 70,
              width: 450,
              child: AppTextfield.textfield(data: 'Firstname'),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 70,
              width: 450,
              child: AppTextfield.textfield(data: 'Lastname'),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 70,
              width: 450,
              child: AppTextfield.textfield(data: 'Email Address'),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 70,
              width: 450,
              child: AppTextfield.textfield(data: 'Password'),
            ),
            SizedBox(height: 35),
            SizedBox(
              height: 50,
              width: 460,
              child: InkWell(onTap: () {}, child: MainContainer.mainContainer),
            ),
            SizedBox(height: 45),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Bgcolor.backGroundColor),
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Bgcolor.backGroundColor,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
