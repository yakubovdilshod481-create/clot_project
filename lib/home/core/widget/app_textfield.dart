import 'package:clot_project/home/core/color/main_colors.dart';
import 'package:flutter/material.dart';

class AppTextfield {
  AppTextfield._();
  static Widget textfield({required String data}) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: .symmetric(vertical: 25),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(4),
          borderSide: BorderSide(color: MainColors.mainColors2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(4),
          borderSide: BorderSide(color: MainColors.mainColors2),
        ),
        hintText: data,
        hintStyle: TextStyle(color: Colors.grey.shade700, fontSize: 16),
        filled: true,
        fillColor: MainColors.mainColors2,
        prefix: Padding(padding: .only(left: 8)),
      ),
    );
  }
}
