import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/presentation/model/categories_model/hoodies_in_categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Gridviewbuilder extends StatelessWidget {
  List<HoodiesInCategories> products = [
    HoodiesInCategories(
      productimage: 'assets/images/hoody.png',
      productname: 'Men\'s Fleece Pullover Hoody',
      productprice: '\$100.00',
    ),
    HoodiesInCategories(
      productimage: 'assets/images/hoody2.png',
      productname: 'Fleece Pullover Skate Hoody',
      productprice: '\$150.97',
    ),
    HoodiesInCategories(
      productimage: 'assets/images/hoody3.png',
      productname: 'Fleece Skate Hoodie',
      productprice: '\$110.00',
    ),
    HoodiesInCategories(
      productimage: 'assets/images/hoody4.png',
      productname: 'Men\'s Ice-Dye Pullover Hoody',
      productprice: '\$128.97',
    ),
    HoodiesInCategories(
      productimage: 'assets/images/hoody5.png',
      productname: 'Men\'s black Pullover Hoody',
      productprice: '\$127.45',
    ),
    HoodiesInCategories(
      productimage: 'assets/images/hoody6.png',
      productname: 'Men\'s street Skate Hoody',
      productprice: '\$109.99 ',
    ),
  ];
  Gridviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
          mainAxisExtent: 281,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: .circular(8),
              color: AppColors.mainColors2,
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.productimage),
                    ),
                  ),
                  alignment: .topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/like.png'),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: .only(left: 4),
                  child: Text(
                    product.productname,
                    style: TextStyle(color: AppColors.textColor, fontSize: 12),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    product.productprice,
                    style: GoogleFonts.gabarito(
                      color: AppColors.textColor,
                      fontSize: 12,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
