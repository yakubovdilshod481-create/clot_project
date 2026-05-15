import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';

class AppButtomTextfieldSearch extends StatelessWidget {
  const AppButtomTextfieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
            );
          },
          borderRadius: .circular(100),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: .circular(100),
              color: AppColors.mainColors2,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(padding: .only(left: 10)),
                  Image.asset(
                    'assets/images/search.png',
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Search',
                    style: TextStyle(color: AppColors.textColor, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
