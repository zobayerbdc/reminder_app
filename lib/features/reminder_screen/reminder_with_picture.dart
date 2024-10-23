import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_apps/common_widgets/custom_text_feild.dart';
import 'package:reminder_apps/common_widgets/customs_button.dart';
import 'package:reminder_apps/common_widgets/customs_text_feild.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/gen/assets.gen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/all_routes.dart';
import 'package:reminder_apps/helper/navigation_service.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';

class ReminderWithPicture extends StatefulWidget {
  const ReminderWithPicture({super.key});

  @override
  State<ReminderWithPicture> createState() => _ReminderWithPictureState();
}

class _ReminderWithPictureState extends State<ReminderWithPicture> {
  /*text editing controller*/
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _dateTimeEditingController =
      TextEditingController();
  final TextEditingController _notesEditingController = TextEditingController();

  // Method to show the Date Picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Default date
      firstDate: DateTime(1900), // Minimum date
      lastDate: DateTime.now(), // Maximum date
    );

    if (pickedDate != null) {
      setState(() {
        _dateTimeEditingController.text =
            "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Reminder'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
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
                    'Title',
                    style: TextFontStyle.text13poppinscFF6E5782w600
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  CustomTextFormField(
                    isPrefixIcon: true,
                    hintText: 'Title',
                    controller: _titleEditingController,
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium,
              Text(
                'Select Date & Time',
                style: TextFontStyle.text13poppinscFF6E5782w600
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              CustomTextFormField(
                isPrefixIcon: true,
                hintText: 'Select Date & Time',
                controller: _dateTimeEditingController,
              ),
              UIHelper.verticalSpaceMedium,
              Row(
                children: [
                  Text(
                    'Additional Notes',
                    style: TextFontStyle.text13poppinscFF6E5782w600
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    ' (optional)',
                    style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.c807B7B),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(
                child: CustomsTextFormField(
                  isPrefixIcon: true,
                  hintText: 'Set Time',
                  controller: _notesEditingController,
                  maxline: 5,
                  // Prevent manual input
                  onTap: () => _selectDate(context),
                ),
              ),
              UIHelper.verticalSpaceMedium,
              Row(
                children: [
                  Text(
                    'Upload Image',
                    style: TextFontStyle.text13poppinscFF6E5782w600
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    ' (optional)',
                    style: TextFontStyle.text13poppinscFF6E5782w600.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.c807B7B),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium,
              Row(
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    color: AppColors.allPrimaryColor,
                    radius: Radius.circular(12),
                    dashPattern: [8, 4],
                    child: Container(
                      height: 80.h,
                      width: 90.w,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.cFFFFFF),
                      child: SvgPicture.asset(
                        Assets.icons.nounImageUpload,
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    color: AppColors.allPrimaryColor,
                    radius: Radius.circular(12),
                    dashPattern: [8, 4],
                    child: Container(
                      height: 80.h,
                      width: 90.w,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.cFFFFFF),
                      child: SvgPicture.asset(
                        Assets.icons.nounImageUpload,
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium,
              Center(
                child: CustomsButton(
                  text: 'Save new reminder',
                  gradientColors: const [AppColors.cAB1BE2, AppColors.c7D319A],
                  borderRadius: 15,
                  onTap: () {
                    NavigationService.navigateToReplacement(
                        Routes.addReminderWithPictureScreen);
                  },
                ),
              ),
              Align(
                alignment: Alignment.center, // Center alignment
                child: TextButton(
                  onPressed: _disposed,
                  child: Text(
                    'Clear All',
                    style: TextFontStyle.text13poppinscFF6E5782w600
                        .copyWith(color: AppColors.cEA0C09),
                    textAlign: TextAlign.center,
                  ),
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
    _titleEditingController.clear();
    _dateTimeEditingController.clear();
    _notesEditingController.clear();
  }
}
