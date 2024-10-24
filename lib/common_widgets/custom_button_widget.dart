import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class CustomButtonWidget extends StatelessWidget {

  final VoidCallback onTapButton;

  const CustomButtonWidget({super.key, required this.onTapButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.sp),
        gradient: const LinearGradient(
          colors: [Colors.red, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            // TextField inside Expanded
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.sp, horizontal: 10.h),
                      filled: true,
                      fillColor: AppColors.cFFFFFF,
                      hintText: 'Type Your Reminder Here...',
                      hintStyle:
                          TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        fontSize: 13.sp,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      suffixIcon:
                          const Icon(Icons.image_outlined, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),

            // Circular Button with Send Icon
            Container(
              height: 60.h,
              width: 60.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  Assets.icons.telegramSend,
                  width: 30.w,
                ),
                onPressed: onTapButton,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
