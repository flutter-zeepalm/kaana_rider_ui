// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaana_rider/data/data.dart';
import 'package:kaana_rider/screens/EarningScreens/earning2Screen.dart';

import 'package:kaana_rider/screens/EarningScreens/menu_confirmed_order.dart';
import 'package:kaana_rider/screens/EarningScreens/promotions.dart';
import 'package:kaana_rider/screens/EarningScreens/support.dart';

import 'package:kaana_rider/screens/ProfileDetailsScreens/about_kaana.dart';
import 'package:kaana_rider/screens/ProfileDetailsScreens/view_profile.dart';
import 'package:kaana_rider/widgets/menu_drawer.dart';
import 'package:kaana_rider/widgets/text_widgets.dart';

class SliderRapper extends StatelessWidget {
  final Widget body;
  final GlobalKey<SliderDrawerWidgetState> key1;
  SliderRapper({
    Key? key,
    required this.body,
    required this.key1,
  }) : super(key: key);
  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SliderDrawerWidget(
        key: key1,
        option: SliderDrawerOption(
          backgroundColor: CustomColor.kbluecolor,
          sliderEffectType: SliderEffectType.Rounded,
          upDownScaleAmount: 30,
          radiusAmount: 50,
        ),
        drawer: const CustomDrawer(),
        body: body);
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  Widget _thumbnailPart() {
    return InkWell(
      onTap: () {
        Get.to(() => const ViewProfile());
      },
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              child: SvgPicture.asset(CustomAssets.profilepicdrawer),
              //   backgroundImage: Image.asset("assets/accountdp.png",
              //           height: 13.h, width: 55.w, fit: BoxFit.contain)
              //       .image,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText(
                      text: "Agbama",
                      textStyle: kbigStyle,
                      color: CustomColor.kfullwhitecolor,
                      fontWeight: kBoldFontWeight),
                  CustomText(
                      text: "View profile",
                      textStyle: kverysmallTextStyle,
                      color: CustomColor.kfullwhitecolor,
                      fontWeight: kRegularWeight),
                ],
              ),
            ),
          ),
          InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(CustomAssets.crossrounded)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _thumbnailPart(),
            SizedBox(height: 100.h),
            MenuBox(
              text: "Earnings",
              icon: Icons.wallet,
              onTap: () {
                Get.to(() => const EarningScreen2());
              },
            ),
            MenuBox(
              text: "Orders",
              icon: Icons.list,
              onTap: () {
                Get.to(() => const MenuConfirmedOrderScreen());
              },
            ),
            MenuBox(
              text: "Promotions",
              icon: Icons.settings,
              onTap: () {
                Get.to(() => const PromotionScreen());
              },
            ),
            MenuBox(
              text: "Support",
              icon: Icons.account_circle,
              onTap: () {
                Get.to(() => const Support());
              },
            ),
            MenuBox(
              text: "About",
              icon: Icons.error,
              onTap: () {
                Get.to(() => const AboutKaana());
              },
            ),
          ],
        ),
      ),
    );
  }
}
