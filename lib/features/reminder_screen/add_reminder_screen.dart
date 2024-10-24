import 'package:flutter/material.dart';
import 'package:reminder_apps/common_widgets/custom_text_feild.dart';
import 'package:reminder_apps/common_widgets/customs_button.dart';
import 'package:reminder_apps/common_widgets/customs_text_feild.dart';
import 'package:reminder_apps/constant/text_font_style.dart';
import 'package:reminder_apps/features/home_screen/home_main_screen.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/ui_helpers.dart';

class AddReminderScreen extends StatefulWidget {
  const AddReminderScreen({super.key});

  @override
  State<AddReminderScreen> createState() => _AddReminderScreenState();
}

class _AddReminderScreenState extends State<AddReminderScreen> {

  /*text editing controller*/
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _dateTimeEditingController = TextEditingController();
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
              Text(
                'Additional Notes (optionals)',
                style: TextFontStyle.text13poppinscFF6E5782w600
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
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
              Center(
                child: CustomsButton(
                  text: 'Save new reminder',
                  gradientColors: [AppColors.cAB1BE2, AppColors.c7D319A],
                  borderRadius: 15,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeMainScreen(),
                      ),
                    );
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
                        .copyWith(color: AppColors.cEA0C09, decoration: TextDecoration.underline, height: 0),
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
