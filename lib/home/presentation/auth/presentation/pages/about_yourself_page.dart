import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_container.dart';
import 'package:clot_project/home/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutYourselfPage extends StatefulWidget {
  const AboutYourselfPage({super.key});

  @override
  State<AboutYourselfPage> createState() => _AboutYourselfPageState();
}

class _AboutYourselfPageState extends State<AboutYourselfPage> {
  final changeAge = TextEditingController();
  int change = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Padding(padding: .only(top: 142)),
              Text(
                'Tell us About yourself',
                style: GoogleFonts.gabarito(
                  color: AppColors.backGroundColor,
                  fontSize: 30,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Padding(padding: .only(left: 16)),
                  Transform.scale(
                    scaleX: 1.1,
                    child: Text(
                      'Who do you shop for ?',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        change = 0;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                        color: change == 0
                            ? AppColors.mainColors
                            : AppColors.mainColors2,
                        borderRadius: .circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'Men',
                          style: TextStyle(
                            color: change == 0 ? Colors.white : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        change = 1;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                        color: change == 1
                            ? AppColors.mainColors
                            : AppColors.mainColors2,
                        borderRadius: .circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'Woman',
                          style: TextStyle(
                            color: change == 1 ? Colors.white : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 56),
              Row(
                children: [
                  Padding(padding: .only(left: 17)),
                  Transform.scale(
                    scaleX: 1.1,
                    child: Text(
                      'How Old are you ?',
                      style: TextStyle(
                        color: AppColors.backGroundColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13),
              TextField(
                controller: changeAge,
                decoration: InputDecoration(
                  contentPadding: .symmetric(vertical: 22),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: .circular(100),
                    borderSide: BorderSide(color: AppColors.mainColors2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: .circular(100),
                    borderSide: BorderSide(color: AppColors.mainColors2),
                  ),
                  filled: true,
                  fillColor: AppColors.mainColors2,
                  prefix: Padding(padding: .only(left: 16)),
                  hintText: 'Age Range',
                  hintStyle: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: PopupMenuButton<String>(
                      tooltip: '',
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Image.asset(
                          'assets/images/arrow_down.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      onSelected: (value) {
                        changeAge.text = value;
                      },
                      itemBuilder: (context) =>
                          <String>[
                            '5 - 12',
                            '13 - 17',
                            '18 - 24',
                            '25 - 34',
                            '35 - 44',
                          ].map((age) {
                            return PopupMenuItem<String>(
                              value: age,
                              child: Text(
                                age,
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 15,
                                ),
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 280),
              SizedBox(
                height: 49,
                child: AppContainer(button: 'Finish', navigator: Homepage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
