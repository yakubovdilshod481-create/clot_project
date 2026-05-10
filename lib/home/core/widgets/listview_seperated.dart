import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:clot_project/home/presentation/model/categories_model/categories.dart';
import 'package:clot_project/home/presentation/model/homepage_model/category.dart';
import 'package:clot_project/home/presentation/model/homepage_model/products.dart';
import 'package:clot_project/home/presentation/pages/hoodies_page_in_categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ListviewSeperatedCategories extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(
      title: 'Hoodies',
      image: 'assets/images/hoodies.png',
      navigator: HoodiesPageInCategories(),
    ),
    CategoryModel(title: 'Shorts', image: 'assets/images/shorts.png'),
    CategoryModel(title: 'Shoes', image: 'assets/images/shoes.png'),
    CategoryModel(title: 'Bag', image: 'assets/images/bag.png'),
    CategoryModel(title: 'Accessories', image: 'assets/images/accessories.png'),
  ];
  ListviewSeperatedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 16);
        },
        scrollDirection: .horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            children: [
              InkWell(
                borderRadius: .circular(100),
                onTap: () {
                  if (category.navigator != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => category.navigator!,
                      ),
                    );
                  }
                },
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: AppColors.mainColors2,
                  foregroundImage: AssetImage(category.image),
                ),
              ),
              SizedBox(height: 5),
              Text(
                category.title,
                style: TextStyle(color: AppColors.textColor, fontSize: 12),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ListviewSeperatedProduct extends StatelessWidget {
  final List<Products> products = [
    Products(
      image: 'assets/images/product.png',
      productname: 'Men\'s Harrington Jacket',
      price: '\$148',
    ),
    Products(
      image: 'assets/images/product2.png',
      productname: 'Max Cirro Men\'s Slides',
      price: '\$55.00',
      oldprice: '\$100.97',
    ),
    Products(
      image: 'assets/images/product3.png',
      productname: 'Men\'s Coaches Jacket',
      price: '\$66.97',
    ),
  ];
  ListviewSeperatedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: .horizontal,
        itemBuilder: (context, index) {
          final product = products[index];
          if (product.oldprice == null) {
            return Container(
              height: 281,
              width: 159,
              decoration: BoxDecoration(
                borderRadius: .circular(8),
                color: AppColors.mainColors2,
              ),
              alignment: .topCenter,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    height: 220,
                    width: 159,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(product.image)),
                    ),
                    alignment: .topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/like.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      product.productname,
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Row(
                      children: [
                        Text(
                          product.price,
                          style: GoogleFonts.gabarito(
                            color: AppColors.textColor,
                            fontWeight: .bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }

          return Container(
            height: 281,
            width: 159,
            decoration: BoxDecoration(
              borderRadius: .circular(8),
              color: AppColors.mainColors2,
            ),
            alignment: .topCenter,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  height: 220,
                  width: 159,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(product.image)),
                  ),
                  alignment: .topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/like.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    product.productname,
                    style: TextStyle(color: AppColors.textColor, fontSize: 12),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    children: [
                      Text(
                        product.price,
                        style: GoogleFonts.gabarito(
                          color: AppColors.textColor,
                          fontWeight: .bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          '${product.oldprice}',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey.shade500,
                            fontWeight: .bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 12);
        },
        itemCount: 3,
      ),
    );
  }
}

class ListviewSeperatedProduct2 extends StatelessWidget {
  final List<Products> products = [
    Products(
      image: 'assets/images/product4.png',
      productname: 'Men\'s Harrington Jacket',
      price: '\$148',
    ),
    Products(
      image: 'assets/images/product5.png',
      productname: 'Max Cirro Men\'s Slides',
      price: '\$55.00',
      oldprice: '\$100.97',
    ),
    Products(
      image: 'assets/images/product6.png',
      productname: 'Men\'s Coaches Jacket',
      price: '\$66.97',
    ),
  ];
  ListviewSeperatedProduct2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: .horizontal,
        itemBuilder: (context, index) {
          final product = products[index];
          if (product.oldprice == null) {
            return Container(
              height: 281,
              width: 159,
              decoration: BoxDecoration(
                borderRadius: .circular(8),
                color: AppColors.mainColors2,
              ),
              alignment: .topCenter,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    height: 220,
                    width: 159,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(product.image)),
                    ),
                    alignment: .topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/like.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      product.productname,
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Row(
                      children: [
                        Text(
                          product.price,
                          style: GoogleFonts.gabarito(
                            color: AppColors.textColor,
                            fontWeight: .bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }

          return Container(
            height: 281,
            width: 159,
            decoration: BoxDecoration(
              borderRadius: .circular(8),
              color: AppColors.mainColors2,
            ),
            alignment: .topCenter,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  height: 220,
                  width: 159,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(product.image)),
                  ),
                  alignment: .topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/like.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    product.productname,
                    style: TextStyle(color: AppColors.textColor, fontSize: 12),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    children: [
                      Text(
                        product.price,
                        style: GoogleFonts.gabarito(
                          color: AppColors.textColor,
                          fontWeight: .bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          '${product.oldprice}',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey.shade500,
                            fontWeight: .bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 12);
        },
        itemCount: 3,
      ),
    );
  }
}

// ignore: must_be_immutable
class ShopByCategories extends StatelessWidget {
  final List<Categories> category = [
    Categories(
      image: 'assets/images/hoodies.png',
      categoriesname: 'Hoodies',
      navigator: HoodiesPageInCategories(),
    ),
    Categories(
      image: 'assets/images/accessories.png',
      categoriesname: 'Accessories',
    ),
    Categories(image: 'assets/images/shorts.png', categoriesname: 'Shorts'),
    Categories(image: 'assets/images/shoes.png', categoriesname: 'Shoes'),
    Categories(image: 'assets/images/bag.png', categoriesname: 'Bags'),
  ];
  ShopByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          final cat = category[index];
          return InkWell(
            onTap: () {
              if (cat.navigator != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cat.navigator!),
                );
              }
            },
            child: Container(
              height: 64,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: .circular(8),
                color: AppColors.mainColors2,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Image.asset(cat.image),
                    SizedBox(width: 16),
                    Text(cat.categoriesname),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
        itemCount: 5,
      ),
    );
  }
}
