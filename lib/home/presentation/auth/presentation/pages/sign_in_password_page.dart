import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:clot_project/home/core/widgets/app_container.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/create_account_page.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/forgot_password_page.dart';
import 'package:flutter/material.dart';

class SignInPasswordPage extends StatefulWidget {
  const SignInPasswordPage({super.key});

  @override
  State<SignInPasswordPage> createState() => _SignInPasswordPageState();
}

class _SignInPasswordPageState extends State<SignInPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Padding(padding: .only(top: 30)),
              Transform.scale(
                scaleX: 1.10,
                child: Row(
                  children: [
                    Padding(padding: .only(left: 25)),
                    Text(
                      'Sign in',
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
                child: AppTextfield(
                  textfield: 'Password',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: .center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 460,
                    child: AppContainer(
                      button: 'Continue',
                      navigator: CreateAccountPage(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Transform.scale(
                scaleX: 1.10,
                child: Row(
                  children: [
                    Padding(padding: .only(left: 23)),
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
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
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
                        'Reset',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: .bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
