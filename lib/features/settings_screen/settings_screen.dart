import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
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
            color: AppColors.deepBlack,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
