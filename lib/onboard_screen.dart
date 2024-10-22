import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/common_widgets/custom_button.dart';
import 'package:reminder_apps/common_widgets/customs_button.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/all_routes.dart';
import 'package:reminder_apps/helper/navigation_service.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.bg.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 40.h),
          child: Container(
            decoration: BoxDecoration(
            
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.r),bottomRight: Radius.circular(12.r))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Assets.images.logo.path,
                      width: 70.w,
                    ),
                    Text(
                      "Skip",
                      style: TextFontStyle.text1500000B66w600,
                    )
                  ],
                ),
                UIHelper.verticalSpaceMedium,
                Text(
                  "Find The Best Online course",
                  style: TextFontStyle.text1500000B66w600
                      .copyWith(color: AppColors.c4D4D4D, fontSize: 42.sp),
                  textAlign: TextAlign.center,
                ),
                UIHelper.verticalSpace(10.h),
                Text(
                  "Search for More Online School Courses Results and See What You May Be Missing.",
                  style: TextFontStyle.text1500000B66w600
                      .copyWith(color: AppColors.c503559, fontSize: 14.sp),
                  textAlign: TextAlign.start,
                ),
                UIHelper.verticalSpace(35.h),
                Center(child: Image.asset(Assets.images.logo.path)),
                UIHelper.verticalSpace(35.h),
                CustomsButton(onTap: () {
                  NavigationService.navigateTo(Routes.splashscreen);
                }, text: 'Continue', gradientColors: const [
                  AppColors.cE90909,
                  AppColors.cFF7700
                ], borderRadius: 15.sp,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
