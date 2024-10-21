import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const CustomButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 58,
        padding:  EdgeInsets.symmetric(horizontal: 110.w, vertical: 10.h),
        decoration: ShapeDecoration(
          color: AppColors.cFF503559,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child:  Center(
          child: Text(
            text,
            style: TextFontStyle.text16cFF503559W700),
        ),
      ),
    );
  }
}
