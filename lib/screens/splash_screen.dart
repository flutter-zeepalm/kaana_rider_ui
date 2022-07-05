import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/assets_path.dart';
import 'package:kaana_rider/data/constants.dart';
import 'package:kaana_rider/screens/welcome_screen.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    3.seconds.delay().then((value) => Get.off(() => const WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.kbluecolor,
      body: Center(
        child: SvgPicture.asset(CustomAssets.klogoSvg),
      ),
    );
  }
}
