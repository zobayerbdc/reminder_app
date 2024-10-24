import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';

class SnoozeItemList extends StatelessWidget {
  const SnoozeItemList(
      {super.key, required this.currentValue, required this.onChangeFun});

  final double currentValue;
  final Function(double) onChangeFun;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.cFEF2F2,
        // border: Border.all( // Add border outline
        //   color: Colors.red, // Border color
        //   width: 1, // Border width
        // ),
        boxShadow: [
          BoxShadow(
              color: Colors.red.withOpacity(0.3),
              // Shadow for this container
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(1, 3),
              blurStyle: BlurStyle.normal),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.horizontalSpaceSmall,
                  Row(
                    children: [
                      Text(
                        'August 19, 2024',
                        style: TextFontStyle.customizePoppinsFont.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        '0:00 AM',
                        style: TextFontStyle.customizePoppinsFont.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ), // date & time
                  Text(
                    'Create New Bank Account',
                    style: TextFontStyle.customizePoppinsFont.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ), // create new bank account
                  Text(
                    'Ut perspiciatis unde omnis iste natus.',
                    style: TextFontStyle.customizePoppinsFont.copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ), //ui perspiciatis
                ],
              ),
              SvgPicture.asset(Assets.icons.smallClock,
                height: 25.h,
                width: 25.w,),
            ],
          ),
          UIHelper.verticalSpaceMedium,
          Row(
            children: [
              Text(
                'Snooze:',
                style: TextFontStyle.customizePoppinsFont
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.cE90909, // Start color
                      AppColors.cFF7700, // End color
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  '3 Days',
                  style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                      color: AppColors.cFFFFFF, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.c2E2E2E, // Start color
                      AppColors.c4D4D4D, // End color
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  '30 Days',
                  style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                      color: AppColors.cFFFFFF, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.cEA0C09, // Start color
                      AppColors.cF92623, // End color
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  '90 Days',
                  style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                      color: AppColors.cFFFFFF, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${currentValue.round()} ' + ' Days',
                  style: TextFontStyle.customizePoppinsFont.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
          ),
          Row(
// mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Custom Snooze:',
                style: TextFontStyle.customizePoppinsFont
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 209.w,
// Set your desired width for the slider
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    valueIndicatorShape:
                        const PaddleSliderValueIndicatorShape(),
                    trackHeight: 5,
// Increase the track height (vertical size)
                    activeTrackColor: AppColors.cAB1BE2,
                    inactiveTrackColor: AppColors.cFFFFFF,
                    thumbColor: AppColors.cFFFFFF,
                    valueIndicatorColor: AppColors.cAB1BE2,
                    valueIndicatorTextStyle:
                        const TextStyle(color: AppColors.cFFFFFF),
                    overlayColor: AppColors.cAB1BE2.withOpacity(0.3),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 12.0),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 10),
                  ),
                  child: Slider(
                    value: currentValue,
                    min: 1,
                    max: 360,
                    divisions: 360,
                    label: '${currentValue.round()} Days',
                    onChanged: onChangeFun,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
