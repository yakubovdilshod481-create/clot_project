import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_gridviewbuilder.dart';
import 'package:clot_project/home/core/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage2 extends StatefulWidget {
  const SearchPage2({super.key});

  @override
  State<SearchPage2> createState() => _SearchPage2State();
}

class _SearchPage2State extends State<SearchPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Padding(padding: .only(top: 42)),
              Row(
                children: [
                  Container(
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
                  SizedBox(width: 9),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: AppTextfieldSearch(
                        image: 'assets/images/search.png',
                        text: 'Jacket',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    height: 27,
                    width: 43,
                    decoration: BoxDecoration(
                      color: AppColors.mainColors,
                      borderRadius: .circular(100),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Image.asset(
                            'assets/images/find.png',
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(width: 1.5),
                          Text('2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      showBottomSheetOnSale(context);
                    },
                    borderRadius: .circular(100),
                    child: Container(
                      height: 27,
                      width: 60,
                      decoration: BoxDecoration(
                        color: AppColors.mainColors2,
                        borderRadius: .circular(100),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              'On Sale',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      showBottomSheetPrice(context);
                    },
                    borderRadius: .circular(100),
                    child: Container(
                      height: 27,
                      width: 70,
                      decoration: BoxDecoration(
                        color: AppColors.mainColors,
                        borderRadius: .circular(100),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 8),
                            Image.asset(
                              'assets/images/arrow_down.png',
                              color: Colors.white,
                              width: 14,
                              height: 14,
                            ),
                            SizedBox(width: 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      showBottomSheet(context);
                    },
                    borderRadius: .circular(100),
                    child: Container(
                      height: 27,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColors.mainColors2,
                        borderRadius: .circular(100),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              'Sort by',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 8),
                            Image.asset(
                              'assets/images/arrow_down.png',
                              width: 14,
                              height: 14,
                            ),
                            SizedBox(width: 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: InkWell(
                      onTap: () {
                        showBottomSheetGender(context);
                      },
                      borderRadius: .circular(100),
                      child: Container(
                        height: 27,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors.mainColors,
                          borderRadius: .circular(100),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                'Men',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 8),
                              Image.asset(
                                'assets/images/arrow_down.png',
                                color: Colors.white,
                                width: 14,
                                height: 14,
                              ),
                              SizedBox(width: 4),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 17),
              Text(
                '53 Result Found',
                style: TextStyle(color: AppColors.textColor, fontSize: 12),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 650,
                width: double.infinity,
                child: AppOrderGridviewbuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: .vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
        return Padding(
          padding: .all(20),

          child: Column(
            mainAxisSize: .min,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('Clear', style: TextStyle(fontSize: 16)),
                  Text(
                    'Sort by',
                    style: GoogleFonts.gabarito(
                      fontSize: 22,
                      fontWeight: .bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(height: 25),
              sortButton(text: "Recommended", isSelected: true),

              SizedBox(height: 15),

              sortButton(text: "Newest"),

              SizedBox(height: 15),

              sortButton(text: "Lowest - Highest Price"),

              SizedBox(height: 15),

              sortButton(text: "Highest - Lowest Price"),

              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  void showBottomSheetGender(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: .vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
        return Padding(
          padding: .all(20),

          child: Column(
            mainAxisSize: .min,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('Clear', style: TextStyle(fontSize: 16)),
                  Text(
                    'Gender',
                    style: GoogleFonts.gabarito(
                      fontSize: 22,
                      fontWeight: .bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(height: 25),
              genderButton(text: "Men", isSelected: true),

              SizedBox(height: 15),

              genderButton(text: "Woman"),

              SizedBox(height: 15),

              genderButton(text: "kids"),

              SizedBox(height: 100),
            ],
          ),
        );
      },
    );
  }

  void showBottomSheetOnSale(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: .vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
        return Padding(
          padding: .all(20),

          child: Column(
            mainAxisSize: .min,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('Clear', style: TextStyle(fontSize: 16)),
                  Text(
                    'Deals',
                    style: GoogleFonts.gabarito(
                      fontSize: 22,
                      fontWeight: .bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(height: 25),
              dealsButton(text: "On sale", isSelected: true),

              SizedBox(height: 15),

              dealsButton(text: "Free Shipping Eligible"),

              SizedBox(height: 150),
            ],
          ),
        );
      },
    );
  }

  void showBottomSheetPrice(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: .vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
        return Padding(
          padding: .all(20),

          child: Column(
            mainAxisSize: .min,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('Clear', style: TextStyle(fontSize: 16)),
                  Text(
                    'Price',
                    style: GoogleFonts.gabarito(
                      fontSize: 22,
                      fontWeight: .bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(height: 25),
              priceButton(text: "Min", isSelected: false),

              SizedBox(height: 15),

              priceButton(text: "Max"),

              SizedBox(height: 150),
            ],
          ),
        );
      },
    );
  }
}

Widget sortButton({required String text, bool isSelected = false}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
    decoration: BoxDecoration(
      color: isSelected ? AppColors.mainColors : Colors.grey.shade200,

      borderRadius: BorderRadius.circular(30),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),

        if (isSelected) Icon(Icons.check, color: Colors.white),
      ],
    ),
  );
}

Widget genderButton({required String text, bool isSelected = false}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
    decoration: BoxDecoration(
      color: isSelected ? AppColors.mainColors : Colors.grey.shade200,

      borderRadius: BorderRadius.circular(30),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),

        if (isSelected) Icon(Icons.check, color: Colors.white),
      ],
    ),
  );
}

Widget dealsButton({required String text, bool isSelected = false}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
    decoration: BoxDecoration(
      color: isSelected ? AppColors.mainColors : Colors.grey.shade200,

      borderRadius: BorderRadius.circular(30),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),

        if (isSelected) Icon(Icons.check, color: Colors.white),
      ],
    ),
  );
}

Widget priceButton({required String text, bool isSelected = false}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
    decoration: BoxDecoration(
      color: isSelected ? AppColors.mainColors : Colors.grey.shade200,

      borderRadius: BorderRadius.circular(30),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.textcolor2,
            fontWeight: FontWeight.w600,
          ),
        ),

        if (isSelected) Icon(Icons.check, color: Colors.white),
      ],
    ),
  );
}
