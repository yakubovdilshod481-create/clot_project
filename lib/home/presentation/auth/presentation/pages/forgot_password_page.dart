import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:clot_project/home/core/widgets/app_container.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/conguratulate_page.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/create_account_page.dart';
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
            style: IconButton.styleFrom(backgroundColor: AppColors.mainColors2),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: AppColors.backGroundColor,
                  fontSize: 30,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: AppTextfield(
                  textfield: 'Enter Email address',
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: AppContainer(
                  button: 'Continue',
                  navigator: ConguratulatePage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
