import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminder_apps/common_widgets/custom_button_widget.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/home_screen/home_sub_screen/widgets/snooze_item_list.dart';
import 'package:reminder_apps/features/reminder_screen/add_reminder_screen.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class ActiveReminder extends StatefulWidget {
  const ActiveReminder({super.key});

  @override
  State<ActiveReminder> createState() => _ActiveReminderState();
}

class _ActiveReminderState extends State<ActiveReminder> {
  double _currentSliderValue = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: 20.w),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*first class*/
            Container(
              color: AppColors.cF6ECF9,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SnoozeItemList(
                  currentValue: _currentSliderValue,
                  onChangeFun: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
            ),
            /*second class*/
            Container(
              color: AppColors.cFFFFFF,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10.sp),
                  padding: EdgeInsets.all(15.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.cFFFFFF,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          // Shadow for this container
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                          blurStyle: BlurStyle.normal),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Date Created: ',
                                style: TextFontStyle.text13poppinscFF6E5782w600
                                    .copyWith(
                                  color: AppColors.c000000,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12.sp,
                                ),
                              ),
                              Text(
                                'August 19, 2024',
                                style: TextFontStyle.text13poppinscFF6E5782w600
                                    .copyWith(
                                  color: AppColors.c000000,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12.sp,
                                ),
                              ),
                              Text(
                                ' 0:00 AM',
                                style: TextFontStyle.text13poppinscFF6E5782w600
                                    .copyWith(
                                  color: AppColors.c000000,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Ultimate Shopping Adventure Awaits!',
                            style: TextFontStyle.text13poppinscFF6E5782w600
                                .copyWith(
                                    color: AppColors.c000000,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: SvgPicture.asset(
                          Assets.icons.smallClock,
                          height: 25.h,
                          width: 25.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButtonWidget(onTapButton: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const AddReminderScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
