import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/common_widgets/custom_text_feild.dart';
import 'package:reminder_apps/common_widgets/customs_button.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/reminder_screen/reminder_with_picture.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({super.key});

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  /*text editing controller*/
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _phoneEditingController = TextEditingController();
  final TextEditingController _notesEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            // Optional padding to align it better
            child: SvgPicture.asset(
              Assets.icons.backButton,
            ),
          ),
        ),
        title: Text(
          'Help & Support',
          style: TextFontStyle.text16cFF6E5782w600.copyWith(
            fontSize: 20.sp,
            color: AppColors.c000000,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.sp),
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align text to the left
            children: [
              UIHelper.verticalSpaceSemiLarge,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // Align inner text to the left
                children: [
                  Text(
                    'Full Name',
                    style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.c000000),
                    textAlign: TextAlign.left,
                  ),
                  CustomTextFormField(
                    isPrefixIcon: true,
                    hintText: 'Name here',
                    controller: _nameEditingController,
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium,
              Text(
                'Email',
                style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.c000000),
                textAlign: TextAlign.left,
              ),
              CustomTextFormField(
                isPrefixIcon: true,
                hintText: 'Email Address',
                controller: _emailEditingController,
              ),
              UIHelper.verticalSpaceMedium,
              Text(
                'Phone Number',
                style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.c000000),
                textAlign: TextAlign.left,
              ),
              CustomTextFormField(
                isPrefixIcon: true,
                hintText: 'Phone Number',
                controller: _phoneEditingController,
              ),
              UIHelper.verticalSpaceMedium,
              Text(
                'Additional Notes (optionals)',
                style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.c000000),
                textAlign: TextAlign.left,
              ),
              CustomTextFormField(
                isPrefixIcon: true,
                hintText: 'Set Times',
                controller: _notesEditingController,
                maxline: 5,
              ),
              UIHelper.verticalSpaceMedium,
              Center(
                child: CustomsButton(
                  text: 'Send',
                  gradientColors: [AppColors.cAB1BE2, AppColors.c7D319A],
                  borderRadius: 15,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReminderWithPicture(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void _disposed() {
    super.context;
    _nameEditingController.clear();
    _emailEditingController.clear();
    _phoneEditingController.clear();
    _notesEditingController.clear();
  }
}
