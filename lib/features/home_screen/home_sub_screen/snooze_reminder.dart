import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_apps/common_widgets/custom_button_widget.dart';
import 'package:reminder_apps/features/home_screen/home_sub_screen/widgets/snooze_item_list.dart';
import 'package:reminder_apps/features/reminder_screen/add_reminder_screen.dart';


class SnoozeReminder extends StatefulWidget {
  const SnoozeReminder({super.key});

  @override
  State<SnoozeReminder> createState() => _SnoozeReminderState();
}

class _SnoozeReminderState extends State<SnoozeReminder> {
  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 20;

    return Scaffold(
      // backgroundColor: AppColors.cF6ECF9,
      body: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: 20.w),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*first class*/
            Container(
              // color: AppColors.cF6ECF9,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SnoozeItemList(
                  currentValue: _currentSliderValue,
                  onChangeFun: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButtonWidget(onTapButton: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const AddReminderScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
