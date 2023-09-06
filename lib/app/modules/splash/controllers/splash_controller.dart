import 'dart:async';

import 'package:get/get.dart';

import '../../../data/preference_data/local_preference.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  @override
  void onInit() {
    getRoute();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxString appName = "Mocdt Authenticator".obs;

  LocalPreferences localPreferences = Get.find<LocalPreferences>();

  getRoute() {
    Timer(const Duration(seconds: 3), (){
      if(localPreferences.token.val.length>5){
        Get.offAllNamed(AppPages.HOME);
      }else{
        Get.offAllNamed(AppPages.HOME);
      }
    });
  }

}
