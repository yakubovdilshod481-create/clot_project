import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String image;
  final Widget? navigator;

  CategoryModel({required this.title, required this.image, this.navigator});
}
