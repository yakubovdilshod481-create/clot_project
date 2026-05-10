import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/listview_seperated.dart';
import 'package:clot_project/home/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage2()),
                  );
                },
                borderRadius: .circular(100),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.mainColors2,
                    borderRadius: .circular(100),
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
              SizedBox(height: 16),
              Text(
                'Shop by Categories',
                style: GoogleFonts.gabarito(
                  color: AppColors.textColor,
                  fontSize: 24,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 352,
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
