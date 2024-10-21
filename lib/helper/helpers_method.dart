// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder_apps/common_widgets/exit_button.dart';
import 'package:reminder_apps/constant/app_constant.dart';
import 'package:reminder_apps/gen/colors.gen.dart';
import 'package:reminder_apps/helper/di.dart';
import 'package:reminder_apps/helper/toast.dart';



Future<void> initiInternetChecker() async {
  InternetConnectionChecker.createInstance(
          checkTimeout: const Duration(seconds: 1),
          checkInterval: const Duration(seconds: 2))
      .onStatusChange
      .listen((status) {
    switch (status) {
      case InternetConnectionStatus.connected:
        ToastUtil.showShortToast('Data connection is available.');
        break;
      case InternetConnectionStatus.disconnected:
        ToastUtil.showNoInternetToast();
        break;
    }
  });

}

Future<void> setInitValue() async {
  await appData.writeIfNull(kKeyIsLoggedIn, false);

  var deviceInfo = DeviceInfoPlugin();
  if (Platform.isIOS) {
    var iosDeviceInfo = await deviceInfo.iosInfo;
    // appData.writeIfNull(kKeyDeviceID, iosDeviceInfo.identifierForVendor); // unique ID on iOS
  } else if (Platform.isAndroid) {
    var androidDeviceInfo =
        await deviceInfo.androidInfo; // unique ID on Android
    //appData.writeIfNull(kKeyDeviceID, androidDeviceInfo.id);
  }
  await Future.delayed(const Duration(seconds: 2));
}

void showMaterialDialog(
  BuildContext context,
) {
  showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text(
              "Do you want to exit the app?",
              textAlign: TextAlign.center,
              // style: TextFontStyle.headline14StyleMontserrat,
            ),
            actions: <Widget>[
              ExitButton(
                  name: "No",
                  onCallBack: () {
                    Navigator.of(context).pop(false);
                  },
                  height: 30.sp,
                  minWidth: .3.sw,
                  borderRadius: 30.r,
                  color: AppColors.allPrimaryColor,
                  textStyle: GoogleFonts.montserrat(
                      fontSize: 17.sp,
                      color: AppColors.cFFFFF,
                      fontWeight: FontWeight.w700),
                  context: context),
              ExitButton(
                  name: "Yes",
                  onCallBack: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else if (Platform.isIOS) {
                      exit(0);
                    }
                  },
                  height: 30.sp,
                  minWidth: .3.sw,
                  borderRadius: 30.r,
                  color: AppColors.allPrimaryColor,
                  textStyle: GoogleFonts.montserrat(
                      fontSize: 17.sp,
                      color: AppColors.cFFFFF,
                      fontWeight: FontWeight.w700),
                  context: context),
            ],
          ));
}


void rotation() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}