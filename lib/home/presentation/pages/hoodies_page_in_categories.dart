import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/gridviewbuilder.dart';
import 'package:clot_project/home/core/widgets/listview_seperated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoodiesPageInCategories extends StatefulWidget {
  const HoodiesPageInCategories({super.key});

  @override
  State<HoodiesPageInCategories> createState() =>
      _HoodiesPageInCategoriesState();
}

class _HoodiesPageInCategoriesState extends State<HoodiesPageInCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: .all(24),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  InkWell(
                    borderRadius: .circular(100),
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopByCategories(),
                        ),
                      );
                    },
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
                    'Hoodies (240)',
                    style: GoogleFonts.gabarito(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),
                  SizedBox(height: 23),
                  SizedBox(
                    height: 700,
                    width: double.infinity,
                    child: Gridviewbuilder(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
