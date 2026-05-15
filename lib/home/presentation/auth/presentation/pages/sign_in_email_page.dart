import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_container.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/create_account_page.dart';
import 'package:clot_project/home/presentation/auth/presentation/pages/sign_in_password_page.dart';
import 'package:flutter/material.dart';

class SignInEmailPage extends StatefulWidget {
  const SignInEmailPage({super.key});

  @override
  State<SignInEmailPage> createState() => _SignInEmailPageState();
}

class _SignInEmailPageState extends State<SignInEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Padding(padding: .only(top: 30)),
              Transform.scale(
                scaleX: 1.0,
                child: Row(
                  children: [
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
                height: 60,
                child: AppTextfield(textfield: 'Email Address'),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: AppContainer(
                  button: 'Continue',
                  navigator: SignInPasswordPage(),
                ),
              ),
              SizedBox(height: 20),
              Transform.scale(
                scaleX: 1.10,
                child: Row(
                  children: [
                    Padding(padding: .only(left: 23)),
                    Text(
                      'Don\'t have an Account?',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 2),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAccountPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Create One',
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
              SizedBox(height: 60),
              SizedBox(
                height: 50,
                child: AppContainer2(
                  text: 'Continue With Apple',
                  image: 'assets/images/apple.png',
                ),
              ),
              SizedBox(height: 13),
              SizedBox(
                height: 50,
                child: AppContainer2(
                  text: 'Continue With Google',
                  image: 'assets/images/google.png',
                ),
              ),
              SizedBox(height: 13),
              SizedBox(
                height: 50,
                child: AppContainer2(
                  text: 'Continue With Facebook',
                  image: 'assets/images/facebook.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
