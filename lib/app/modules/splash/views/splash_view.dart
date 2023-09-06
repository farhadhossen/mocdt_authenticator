import 'package:authenticator/app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/app_style.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.primaryBlack,
                AppColor.secondaryBlack
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.height*0.07,
              width: Get.width*0.25,
              padding: EdgeInsets.all(AppSize.s14),
              decoration: BoxDecoration(
                color: AppColor.splashLogoBg,
                borderRadius: BorderRadius.circular(AppSize.s32)
              ),
              child: SvgPicture.asset(
                  AppAssets.mocdt_white_logo,
                  semanticsLabel: 'mocdt Logo'
              ),
            ),

            SizedBox(height: AppSize.s20,),

            Container(
              width: Get.width*0.66,
              height: Get.width*0.66,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.splashOuterCircleDark1
              ),
              padding: EdgeInsets.all(Get.width*0.09),
              child: Container(
                width: Get.width*0.50,
                height: Get.width*0.50,
                padding: EdgeInsets.all(Get.width*0.09),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.splashOuterCircleDark2
                ),
                child: Container(
                  width: Get.width*0.299,
                  height: Get.width*0.299,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.splashOuterCircleDark2
                  ),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.splash_center_logo)
                      )
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: AppSize.s20,),


            Text("${controller.appName.value}", style: GoogleFonts.poppins(
              fontSize: AppSize.textLarge, color: AppColor.whiteText, fontWeight: FontWeight.w600
            )),

            Text("Always keep you secure", style: GoogleFonts.plusJakartaSans(
                fontSize: AppSize.textSmall, color: AppColor.colorGrey,
            )),


          ],
        ),
      ),
    );
  }
}
