import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/app_style.dart';
import '../../../widgets/custom_app_bar.dart';
import '../controllers/settings_controller.dart';

class AppSecurityView extends GetView<SettingsController> {
  const AppSecurityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "App Security",),
      body: Container(
        padding: EdgeInsets.all(AppSize.s10),
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [


            Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppSize.s8),
              margin: EdgeInsets.all(AppSize.s4),
              decoration: BoxDecoration(
                // color: AppColor.whiteText,
                  borderRadius: BorderRadius.circular(AppSize.s10,),
                  border: Border.all(color: AppColor.cardStrokeWhite.withOpacity(0.2), width: 0.8)
              ),
              child: Row(
                children: [

                  Expanded(child: Text("Face Lock", style: TextStyle(fontSize: AppSize.textSmall),)),
                  // Switch(
                  //     value: controller.isNight.value, onChanged: (value){
                  //   ThemeService().changeThemeMode();
                  //   controller.isNight.value = value;
                  // }
                  // ),

                  Obx(
                      ()=>FlutterSwitch(
                          width: AppSize.s42+AppSize.s6,
                          value: controller.isFaceLock.value,
                          borderRadius: 30.0,
                          activeColor: AppColor.activeGreen,
                          onToggle: (value) {
                            controller.isFaceLock.value = !controller.isFaceLock.value;
                          }
                      )
                  ),

                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppSize.s8),
              margin: EdgeInsets.all(AppSize.s4),
              decoration: BoxDecoration(
                // color: AppColor.whiteText,
                  borderRadius: BorderRadius.circular(AppSize.s10,),
                  border: Border.all(color: AppColor.cardStrokeWhite.withOpacity(0.2), width: 0.8)
              ),
              child: Row(
                children: [

                  Expanded(child: Text("Fingerprint Lock", style: TextStyle(fontSize: AppSize.textSmall),)),
                  // Switch(
                  //     value: controller.isNight.value, onChanged: (value){
                  //   ThemeService().changeThemeMode();
                  //   controller.isNight.value = value;
                  // }
                  // ),

                  Obx(
                      ()=>FlutterSwitch(
                          width: AppSize.s42+AppSize.s6,
                          value: controller.isFingerLock.value,
                          borderRadius: 30.0,
                          activeColor: AppColor.activeGreen,
                          onToggle: (value) {
                            controller.isFingerLock.value = !controller.isFingerLock.value;
                          }
                      )
                  ),

                ],
              ),
            ),


            SizedBox(height: AppSize.s10,),
            Text("Add security to open your app prompt. You can add one option for the security of your app.",
              style: TextStyle(color: AppColor.descripTextDark, fontSize: AppSize.textXSmall),),

          ],
        ),
      ),
    );
  }
}
