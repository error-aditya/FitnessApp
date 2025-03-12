// import 'package:fitnessapp/screens/about_screen.dart';
// import 'package:fitnessapp/screens/alert_box/alert_box.dart';
// import 'package:fitnessapp/screens/badge_box/badge_box.dart';
// import 'package:fitnessapp/screens/bottom_app_bar/bottom_app_bar.dart';
// import 'package:fitnessapp/screens/bottom_sheet/bottom_sheet.dart';
// import 'package:fitnessapp/screens/check_box/check_box.dart';
// import 'package:fitnessapp/screens/date_picker_list/date_picker_list.dart';
// import 'package:fitnessapp/screens/exposed_dropdown/exposed_drop_down.dart';
// import 'package:fitnessapp/screens/list_items/list_items.dart';
// import 'package:fitnessapp/screens/model_bottom_sheet/model_bottom_sheet.dart';
// import 'package:fitnessapp/screens/nav_drawer_list/normal_navigation_drawer.dart';
// import 'package:fitnessapp/screens/text_fields_lists/outline_text_field.dart';
import 'package:fitnessapp/screens/indicators/linear_progress_indicator.dart';
import 'package:fitnessapp/screens/qr_code_example/qr_code.dart';
import 'package:fitnessapp/screens/sliders/range_slider.dart';
import 'package:fitnessapp/screens/sliders/normal_slider.dart';
import 'package:fitnessapp/screens/snackbars/custom_snackbar.dart';
import 'package:fitnessapp/screens/switches/switch_example.dart';
import 'package:fitnessapp/screens/tabs/tabs_example.dart';
import 'package:fitnessapp/screens/text_fields_lists/docked_search_bar.dart';
import 'package:fitnessapp/screens/text_fields_lists/search_bar.dart';
import 'package:fitnessapp/screens/time_picker/time_picker.dart';
// import 'package:fitnessapp/screens/text_fields_lists/text_fields.dart';
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
      // home: BottomSheetExample(),
      // home: CheckBoxExample(),
      // home: DatePickerExample(),
      // home: ExposedDropDownExample(),
      // home: ListItemsExample(),
      // home: ModelBottomSheetExample(),\
      // home: NormalNavigationDrawer(),
      // home: OutlineTextFieldExample(),
      // home: TextFieldsExample(),
      // home: SearchBarExample(),
      // home: DockedSearchBar(),
      // home: LinearProgressIndicatorExample(),
      // home: NormalSlider(),
      // home: RangeSliderExample(),
      // home: CustomSnackbarExample(),
      // home: SwitchExample(),
      // home: TabsExample(),
      // home: TimePickerExample(),
      home: QRcodeExample(),
    );
  }
}
