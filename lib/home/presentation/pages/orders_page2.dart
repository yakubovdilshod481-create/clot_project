import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_listview_seperated.dart';
import 'package:clot_project/home/core/widgets/app_order_categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage2 extends StatefulWidget {
  const OrdersPage2({super.key});

  @override
  State<OrdersPage2> createState() => _OrdersPage2State();
}

class _OrdersPage2State extends State<OrdersPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .only(left: 24, top: 16, bottom: 16, right: 9),
        child: Center(
          child: Column(
            children: [
              Text(
                'Orders',
                style: GoogleFonts.gabarito(
                  color: AppColors.backGroundColor,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40),
              AppOrderCategories(),
              SizedBox(height: 24),
              Flexible(
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: AppOrderListviewSeperated(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
