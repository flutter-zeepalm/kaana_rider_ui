import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/screens/Drawer.dart';
import 'package:kaana_rider/screens/MapScreens/confirm_pickup.dart';
import 'package:kaana_rider/screens/MapScreens/first_user_screen.dart';
import 'package:kaana_rider/screens/UserandManualScreens/user_home.dart';
import 'package:kaana_rider/screens/splash_screen.dart';

import 'data/themedata.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          defaultTransition: Transition.rightToLeft,
          debugShowCheckedModeBanner: false,
          title: 'Kaana Rider',
          theme: primaryTheme,
          home: child,
        );
      },
      child:
          // ConfirmPickUp(),
          //FirstUserScreen(),
          //const UserHome(),

          const SplashScreen(),
    );
  }
}
