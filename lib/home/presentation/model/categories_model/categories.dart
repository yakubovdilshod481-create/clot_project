import 'package:flutter/material.dart';

class Categories {
  final String image;
  final String categoriesname;
  final Widget? navigator;

  Categories({
    required this.image,
    required this.categoriesname,
    this.navigator,
  });
}
