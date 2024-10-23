import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/features/home_screen/home_main_screen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';
import '../../constant/text_font_style.dart';
import '../../gen/assets.gen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextFontStyle.text16cFF6E5782w600.copyWith(
            fontSize: 22.sp,
            color: AppColors.c000000,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              Assets.images.profilePic.path,
              height: 100.h,
              width: 100.w,
            ),
            UIHelper.verticalSpaceMedium,
            Text(
              'Kevin George',
              style: TextFontStyle.text16cFF6E5782w600.copyWith(
                fontSize: 22.sp,
                color: AppColors.c000000,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.cFFFFFF),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.icons.nounReminder,
                          height: 45.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Reminder',
                              style: TextFontStyle.text10poppinscFF6E5782w600,
                            ),
                            Row(
                              children: [
                                Text(
                                  '24510',
                                  style: TextFontStyle
                                      .text10poppinscFF6E5782w600
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(
                                  Assets.icons.backArrow,
                                  width: 25.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.cFFFFFF),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.icons.nounReminder,
                          height: 45.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Active Reminder',
                              style: TextFontStyle.text10poppinscFF6E5782w600,
                            ),
                            Row(
                              children: [
                                Text(
                                  '14510',
                                  style: TextFontStyle
                                      .text10poppinscFF6E5782w600
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(
                                  Assets.icons.backArrow,
                                  width: 25.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceMedium,

            /*setting listing*/
            SettingMenuWidget(
              svg: SvgPicture.asset(
                Assets.icons.smallClock,
                height: 30.h,
              ),
              title: 'Snooze Settings',
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const HomeMainScreen()));
              },
            ),
            SettingMenuWidget(
              svg: SvgPicture.asset(
                Assets.icons.smallClock,
                height: 30.h,
              ),
              title: 'Personal Settings',
              onPress: () {},
            ),
            SettingMenuWidget(
              svg: SvgPicture.asset(
                Assets.icons.smallClock,
                height: 30.h,
              ),
              title: 'Tutorial Settings',
              onPress: () {},
            ),
            SettingMenuWidget(
              svg: SvgPicture.asset(
                Assets.icons.smallClock,
                height: 30.h,
              ),
              title: 'Help & Support',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SettingMenuWidget extends StatelessWidget {
  const SettingMenuWidget({
    super.key,
    required this.title,
    required this.svg,
    required this.onPress,
  });

  final String title;
  final SvgPicture svg;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            svg,
            UIHelper.horizontalSpaceMedium,
            Expanded(
                child: Text(
              title,
              style: TextFontStyle.text16cFF6E5782w600
                  .copyWith(color: AppColors.c000000),
            )),
            SvgPicture.asset(
              Assets.icons.chevronDown,
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
