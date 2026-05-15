import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_listview_seperated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage3 extends StatefulWidget {
  const OrdersPage3({super.key});

  @override
  State<OrdersPage3> createState() => _OrdersPage3State();
}

class _OrdersPage3State extends State<OrdersPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .all(24),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(padding: .only(top: 30)),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Container(
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
                Text(
                  'Order #456765',
                  style: GoogleFonts.gabarito(
                    color: AppColors.backGroundColor,
                    fontSize: 16,
                    fontWeight: .bold,
                  ),
                ),
                SizedBox(height: 40, width: 40),
              ],
            ),
            SizedBox(height: 42),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: AppOrderListviewSeperated2(),
            ),
            SizedBox(height: 40),
            Text(
              'Order Items',
              style: GoogleFonts.gabarito(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {},
              borderRadius: .circular(8),
              child: Container(
                height: 72,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(8),
                  color: AppColors.mainColors2,
                ),
                child: Padding(
                  padding: .only(top: 24, left: 20, right: 21, bottom: 24),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/list.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '4 items',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: AppColors.mainColors,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Shipping details',
              style: GoogleFonts.gabarito(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 14),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: .circular(8),
                color: AppColors.mainColors2,
              ),
              child: Padding(
                padding: .all(11),
                child: Text(
                  '2715 Ash Dr. San Jose, South Dakota 83475\n121-224-7890',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
