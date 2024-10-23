import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:reminder_apps/features/home_screen/home_screen.dart';
import 'package:reminder_apps/features/reminder_screen/add_reminder_screen.dart';
import 'package:reminder_apps/features/reminder_screen/reminder_with_picture.dart';
import 'package:reminder_apps/features/settings_screen/help_support_screen.dart';
import 'package:reminder_apps/features/splash_screen/splash_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String splashscreen = '/splashscreen';
  static const String walkthrowscreen = '/walkthrowscreen';
  static const String homeScreen = '/splashscreen';
  static const String loginScreen = '/splashscreen';
  static const String helpScreen = '/helpscreen';
  static const String addReminderWithPictureScreen = '/addReminderWithPictureScreen';
  static const String addReminderScreen = '/addReminderScreen';
  static const String homeMainScreen = '/homeMainScreen';
  static const String profileSettingScreen = '/profileSettingScreen';
  static const String snoozeSettingScreen = '/profileSettingScreen';


}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.splashscreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: SplashScreen()),
                settings: settings)
            : CupertinoPageRoute(builder: (context) => const SplashScreen());

      case Routes.splashscreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
            widget: const ScreenTitle(widget: SplashScreen()),
            settings: settings)
            : CupertinoPageRoute(builder: (context) => const SplashScreen());

      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
            widget: const ScreenTitle(widget: HomeScreen()),
            settings: settings)
            : CupertinoPageRoute(builder: (context) => const HomeScreen());

      case Routes.addReminderWithPictureScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
            widget: const ScreenTitle(widget: ReminderWithPicture()),
            settings: settings)
            : CupertinoPageRoute(builder: (context) => const ReminderWithPicture());

      case Routes.addReminderScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
            widget: const ScreenTitle(widget: AddReminderScreen()),
            settings: settings)
            : CupertinoPageRoute(builder: (context) => const AddReminderScreen());

      case Routes.helpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
            widget: const ScreenTitle(widget: HelpSupportScreen()),
            settings: settings)
            : CupertinoPageRoute(builder: (context) => const HelpSupportScreen());


      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
