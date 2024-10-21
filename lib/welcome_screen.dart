import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/assets.gen.dart';


class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

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
        child: InkWell(
          onTap: () {
          },
          child: Center(
            child: SizedBox(
                width: 160.w,
                height: 160.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      Assets.images.logo.path,
                      width: 160.w,
                      height: 160.h,
                    ),
                    Text(
                      "Logo here",
                      style: TextFontStyle.text20whiteSans,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
