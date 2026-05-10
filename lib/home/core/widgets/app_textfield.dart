import 'package:clot_project/home/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextfield extends StatefulWidget {
  final String textfield;
  const AppTextfield({super.key, required this.textfield});

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextFormField(
        decoration: InputDecoration(
          contentPadding: .symmetric(vertical: 22),
          focusedBorder: OutlineInputBorder(
            borderRadius: .circular(4),
            borderSide: BorderSide(color: AppColors.mainColors2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: .circular(4),
            borderSide: BorderSide(color: AppColors.mainColors2),
          ),
          hintText: widget.textfield,
          hintStyle: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          filled: true,
          fillColor: AppColors.mainColors2,
          prefix: Padding(padding: .only(left: 10)),
        ),
      ),
    );
  }
}

class AppTextfieldSearch extends StatelessWidget {
  final String image;
  final String text;
  const AppTextfieldSearch({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(
          contentPadding: .symmetric(vertical: 18),
          focusedBorder: OutlineInputBorder(
            borderRadius: .circular(100),
            borderSide: BorderSide(color: AppColors.mainColors2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: .circular(100),
            borderSide: BorderSide(color: AppColors.mainColors2),
          ),
          prefix: Padding(padding: .only(left: 19)),
          hint: Row(
            children: [
              Image.asset(image, width: 16, height: 16),
              SizedBox(width: 12),
              Text(text, style: TextStyle(color: AppColors.textColor)),
            ],
          ),
          filled: true,
          fillColor: AppColors.mainColors2,
        ),
      ),
    );
  }
}
