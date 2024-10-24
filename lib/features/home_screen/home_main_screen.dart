import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/home_screen/home_sub_screen/active_reminder.dart';
import 'package:reminder_apps/features/home_screen/home_sub_screen/complete_reminder.dart';
import 'package:reminder_apps/features/home_screen/home_sub_screen/snooze_reminder.dart';
import 'package:reminder_apps/features/settings_screen/settings_screen.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextFontStyle.text16cFF6E5782w600.copyWith(
              fontSize: 22.sp,
              color: AppColors.c000000,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
                child: SvgPicture.asset(
                  Assets.icons.nounSetting,
                  height: 25.h,
                  width: 15.w,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelStyle: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.cFF2D2D,
            ),
            unselectedLabelStyle: TextFontStyle.text13poppinscFF6E5782w600
                .copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.c000000),
            indicatorSize: TabBarIndicatorSize.tab,
            // Full-width indicator
            indicatorColor: AppColors.cFF2D2D,
            // Indicator color
            tabs: const [
              Tab(text: 'Active'),
              Tab(text: 'Snooze'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ActiveReminder(), // Replace with your home content
            SnoozeReminder(), // Profile tab content
            CompleteReminder(), // Settings tab content
          ],
        ),
      ),
    );
  }
}
