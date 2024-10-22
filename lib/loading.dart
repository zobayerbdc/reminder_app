// ignore_for_file: unused_element

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reminder_apps/constant/app_constant.dart';
import 'package:reminder_apps/features/splash_screen/splash_screen.dart';
import 'package:reminder_apps/helper/di.dart';
import 'package:reminder_apps/helper/helpers_method.dart';
import 'package:reminder_apps/onboard_screen.dart';
import 'package:reminder_apps/welcome_screen.dart';


final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;

  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  loadInitialData() async {
    await setInitValue();
    bool data = appData.read(kKeyIsLoggedIn) ?? false;

    log("==== $data");
    if (data) {
      // String token = appData.read(kKeyAccessToken);
      // DioSingleton.instance.update(token);
      // getProfileResponseRxObj.getProfile();
      // getCategoryResponseRxObj.getCategory();
      //     getLinkResponseRxObj.getsocialLink();

    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SplashScreen(); //splashscreen
    } else {
      return const SplashScreen(); //OnboardScreen
    }
  }
}
