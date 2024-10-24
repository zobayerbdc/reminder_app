import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/common_widgets/customs_button.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/home_screen/home_screen.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';

class WalkthrowScreen extends StatelessWidget {
  const WalkthrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              verticalDirection: VerticalDirection.down,
              children: [
                Image.asset(
                  Assets.images.clockLogo.path,
                  width: 220.w,
                ),
                Text(
                  'Welcome to!',
                  style: TextFontStyle.text15figtreec000000
                      .copyWith(color: AppColors.c4D4D4D, fontSize: 30.sp),
                ),
                Text(
                  'Best Reminder App Ever!',
                  style: TextFontStyle.text15figtreec000000.copyWith(
                      color: AppColors.cE90909,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Text(
                    "My name is Kevin George and I created this app because I was sick and tired of using my email to remind myself about things. I tried to keep this app very straightforward and simple.",
                    style: TextFontStyle.text13poppinsc000000.copyWith(
                        color: AppColors.allPrimaryColor, fontSize: 13.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Text(
                    "Take a moment to go through this tutorial. I promise it’s worth your time.",
                    style: TextFontStyle.text13poppinsc000000.copyWith(
                        color: AppColors.allPrimaryColor, fontSize: 13.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                CustomsButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  text: 'Get Started',
                  gradientColors: const [AppColors.cE90909, AppColors.cFF7700],
                  borderRadius: 15.sp,
                ), //
              ],
            ),
          ],
        ),
      ),
    );
  }
}
