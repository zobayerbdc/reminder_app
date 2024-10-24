import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/constant/text_font_style.dart';

class CustomsButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final List<Color> gradientColors;
  final double borderRadius;

  const CustomsButton({super.key, this.onTap, required this.text, required this.gradientColors, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: 280.w,
        height: 58,
        //padding: EdgeInsets.symmetric(horizontal: 110.h, vertical: 10.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter, // top er center
            end: Alignment.bottomCenter, // bottom er center
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextFontStyle.text15poppins000000.copyWith(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
