import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_listview_seperated.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:clot_project/home/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                    borderRadius: .circular(100),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: .circular(100),
                        color: AppColors.mainColors2,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/arrow_left.png',
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: AppTextfieldSearch(
                        image: 'assets/images/search.png',
                        text: 'Search',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 34),
              Text(
                'Shop by Categories',
                style: GoogleFonts.gabarito(
                  color: AppColors.textColor,
                  fontSize: 24,
                  fontWeight: .w700,
                ),
              ),
              SizedBox(height: 14),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: ShopByCategories(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
