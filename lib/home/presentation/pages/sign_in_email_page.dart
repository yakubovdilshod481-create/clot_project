import 'package:clot_project/home/core/color/backgroundcolor.dart';
import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:clot_project/home/core/widget/main_container.dart';
import 'package:clot_project/home/presentation/pages/sign_in_password_page.dart';
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
      body: Padding(
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
            TextField(
              decoration: InputDecoration(
                contentPadding: .symmetric(vertical: 20),
                focusedBorder: OutlineInputBorder(
                  borderRadius: .circular(4),
                  borderSide: BorderSide(color: MainColors.mainColors2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: .circular(4),
                  borderSide: BorderSide(color: MainColors.mainColors2),
                ),
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                filled: true,
                fillColor: MainColors.mainColors2,
                prefix: Padding(padding: .only(left: 8)),
              ),
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
                          builder: (context) => SignInPasswordPage(),
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
                    'Don\'t have an Account?',
                    style: TextStyle(
                      color: Bgcolor.backGroundColor,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    'Create One',
                    style: TextStyle(
                      color: Bgcolor.backGroundColor,
                      fontWeight: .bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 50,
              width: 460,
              child: MainContainer2.getContainer(
                image: 'assets/images/apple.png',
                name: 'Continue With Apple',
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 460,
              child: MainContainer2.getContainer(
                image: 'assets/images/google.png',
                name: 'Continue With Google   ',
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 460,
              child: MainContainer2.getContainer(
                image: 'assets/images/facebook.png',
                name: 'Continue With Facebook',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
