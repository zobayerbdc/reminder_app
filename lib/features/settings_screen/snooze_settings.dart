import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class SnoozeSettings extends StatefulWidget {
  const SnoozeSettings({super.key});

  @override
  State<SnoozeSettings> createState() => _SnoozeSettingsState();
}

class _SnoozeSettingsState extends State<SnoozeSettings> {

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Snooze Settings',
          style: TextFontStyle.text16cFF6E5782w600.copyWith(
            fontSize: 22.sp,
            color: AppColors.c000000,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60.h,
              width: double.infinity,
              margin: EdgeInsets.all(10.sp),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.cFFFFFF,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3 Days',
                    style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        color: AppColors.c000000, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      Assets.icons.nounEdit,
                      height: 18.h,
                      width: 25.w,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.h,
              width: double.infinity,
              margin: EdgeInsets.all(10.sp),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.cFFFFFF,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '30 Days',
                    style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        color: AppColors.c000000, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      Assets.icons.nounEdit,
                      height: 18.h,
                      width: 25.w,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.h,
              width: double.infinity,
              margin: EdgeInsets.all(10.sp),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.cFFFFFF,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.9),
                    // Shadow for this container
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${_currentSliderValue.round()} Days',
                    style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        color: AppColors.c000000, fontWeight: FontWeight.bold),
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
                      'Update',
                      style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Slider(
            //     value: _currentSliderValue,
            //     max: 360,
            //     divisions: 360,
            //     label: _currentSliderValue.round().toString(),
            //     activeColor: AppColors.cAB1BE2,
            //     inactiveColor: AppColors.cFFFFFF,
            //     thumbColor: AppColors.cFFFFFF,
            //     onChanged: (double value) {
            //       setState(() {
            //         _currentSliderValue = value;
            //       });
            //     }),


            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                valueIndicatorShape: PaddleSliderValueIndicatorShape(), // Custom shape for the label
                valueIndicatorTextStyle: TextStyle(
                  fontSize: 12.sp,  // Customize text size
                  color: AppColors.cFFFFFF,
                ),
                valueIndicatorColor: AppColors.cAB1BE2, // Background color of the label
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0), // Thumb overlay on drag
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14.0), // Adjust thumb size
                trackHeight: 10.0, // Adjust the slider track height
              ),
              child: Slider(
                value: _currentSliderValue,
                min: 1,
                max: 360,
                divisions: 360,
                label: '${_currentSliderValue.round()} Days',
                activeColor: AppColors.cAB1BE2,
                inactiveColor: AppColors.cFFFFFF,
                thumbColor: AppColors.cFFFFFF,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
