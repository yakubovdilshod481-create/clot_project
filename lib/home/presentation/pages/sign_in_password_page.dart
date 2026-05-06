import 'package:clot_project/home/core/color/backgroundcolor.dart';
import 'package:clot_project/home/core/widget/app_textfield.dart';
import 'package:clot_project/home/core/widget/main_container.dart';
import 'package:clot_project/home/presentation/pages/create_account_page.dart';
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
                child: AppTextfield.textfield(data: 'Password'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: .center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 460,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAccountPage(),
                          ),
                        );
                      },
                      borderRadius: .circular(100),
                      child: MainContainer.mainContainer,
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
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Bgcolor.backGroundColor,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      'Reset',
                      style: TextStyle(
                        color: Bgcolor.backGroundColor,
                        fontWeight: .bold,
                        fontSize: 13,
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
