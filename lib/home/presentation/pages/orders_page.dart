import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/core/widgets/app_elevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: .only(top: 71)),
            Text(
              'Orders',
              style: TextStyle(
                color: AppColors.backGroundColor,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 216),
            Center(
              child: Image.asset(
                'assets/images/cart_check.png',
                width: 100,
                height: 100,
              ),
            ),

            SizedBox(height: 24),
            Text(
              'No Orders yet',
              style: GoogleFonts.gabarito(
                color: AppColors.textColor,
                fontWeight: .bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 24),
            SizedBox(height: 52, width: 185, child: AppElevatedbutton()),
          ],
        ),
      ),
    );
  }
}
