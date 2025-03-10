// import 'package:fitnessapp/screens/about_screen.dart';
// import 'package:fitnessapp/screens/alert_box/alert_box.dart';
import 'package:fitnessapp/screens/badge_box/badge_box.dart';
import 'package:fitnessapp/screens/bottom_app_bar/bottom_app_bar.dart';
import 'package:fitnessapp/screens/bottom_sheet/bottom_sheet.dart';
// import 'package:fitnessapp/screens/drop_down_menu/drop_down_menu.dart';
// import 'package:fitnessapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark, // status bar color
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intese Workout App",
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.white,
        // textTheme: const TextTheme(
        //   subtitle1: TextStyle(color: Colors.white),)
      ),
      debugShowCheckedModeBanner: false,
      // defaultTransition: Transition.cupertino,
      // opaqueRoute: Get.isOpaqueRouteDefault,
      // popGesture: Get.isPopGestureEnable,
      // transitionDuration: const Duration(milliseconds: 230),
      // initialRoute: AppPages.Initial,
      // getPages: AppPages.routes,
      // home: Alert(),
      // home: DropDownMenu(),
      // home: AppBars(),
      // home: BottomAppBars(),
      // home: BadgeBox(),
      home: BottomSheetExample()
    );
  }
}
