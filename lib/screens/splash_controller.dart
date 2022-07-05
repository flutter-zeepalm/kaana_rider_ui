import 'dart:async';

import 'package:get/get.dart';
import 'package:kaana_rider/screens/MapScreens/confirm_pickup.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final loadingBarProgress = 0.0.obs;
  Timer? timer;
  @override
  Future<void> onInit() async {
    super.onInit();
    timer = Timer.periodic(
        Duration(milliseconds: 500), (timer) => loadingCounter());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    timer!.cancel();
  }

  void loadingCounter() {
    loadingBarProgress < 1.00
        ? loadingBarProgress.value = loadingBarProgress.value + 0.25
        : Get.off(() => ConfirmPickUp());
  }
}
