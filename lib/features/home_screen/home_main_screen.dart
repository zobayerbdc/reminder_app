import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/home_screen/home_screen.dart';
import 'package:reminder_apps/features/settings_screen/settings_screen.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextFontStyle.text16cFF6E5782w600.copyWith(
            fontSize: 22.sp,
            color: AppColors.c000000
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
      ),
    );
  }
}
