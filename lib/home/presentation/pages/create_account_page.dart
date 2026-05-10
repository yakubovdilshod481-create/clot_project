import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:clot_project/home/core/widgets/app_container.dart';
import 'package:clot_project/home/presentation/pages/conguratulate_page.dart';
import 'package:clot_project/home/presentation/pages/forgot_password_page.dart';
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
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.mainColors2,
                borderRadius: .circular(100),
              ),
              child: Padding(
                padding: .all(15),
                child: Image.asset('assets/images/arrow_left.png'),
              ),
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
              Transform.scale(
                scaleX: 1.10,
                child: Row(
                  children: [
                    Padding(padding: .only(left: 20)),
                    Text(
                      'Create Account',
                      style: TextStyle(
                        color: AppColors.backGroundColor,
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
                width: double.infinity,
                child: AppTextfield(textfield: 'Firstname'),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: AppTextfield(textfield: 'Lastname'),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: AppTextfield(textfield: 'Email Address'),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: AppTextfield(textfield: 'Password'),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: AppContainer(
                  button: 'Continue',
                  navigator: ConguratulatePage(),
                ),
              ),
              SizedBox(height: 40),
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
                      style: TextStyle(color: AppColors.textColor),
                    ),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
