import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/common_widgets/custom_button_widget.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/reminder_screen/add_reminder_screen.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/all_routes.dart';
import 'package:reminder_apps/helper/navigation_service.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.logo.path,
                width: 230.w,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "You don’t have set any reminder. Create one in a seconds.",
                      style: TextFontStyle.text13poppinscFF6E5782w600,
                    ),
                    UIHelper.verticalSpaceSemiLarge,
                    Image.asset(
                      Assets.images.graphic.path,
                      width: 150.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButtonWidget(
                onTapButton: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddReminderScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
