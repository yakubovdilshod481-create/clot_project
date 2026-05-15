import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppOrderCategories extends StatefulWidget {
  const AppOrderCategories({super.key});

  @override
  State<AppOrderCategories> createState() => _AppOrderCategoriesState();
}

class _AppOrderCategoriesState extends State<AppOrderCategories> {
  int _selectedIndex = 0;

  final List<String> statuses = [
    "Processing",
    "Shipped",
    "Delivered",
    "Returned",
    "Canceled",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: statuses.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final bool isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              height: 27,
              width: 75,
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.mainColors
                    : AppColors.mainColors2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  statuses[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : AppColors.textColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
