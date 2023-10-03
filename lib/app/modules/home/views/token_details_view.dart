import 'package:authenticator/app/routes/app_pages.dart';
import 'package:authenticator/app/styles/app_style.dart';
import 'package:authenticator/app/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

import '../../../data/services/theme_services.dart';
import '../../../widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class TokenDetailsView extends GetView<HomeController> {
  const TokenDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("-------------------------");
    return Scaffold(
      // backgroundColor: Get.theme.colorScheme.background,
      backgroundColor: Get.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "Token Details",),
      // AppBar(
      //   backgroundColor: AppColor.primaryBlack,
      //   title: Text('Authenticator', style: TextStyle(color: AppColor.cardStrokeWhite),),
      //   centerTitle: true,
      //   elevation: AppSize.s8,
      //     shadowColor: AppColor.cardStrokeWhite
      // ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(AppSize.s10),
            // margin: EdgeInsets.symmetric(vertical: AppSize.s8),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(AppSize.s10),
                  border: Border(
                    bottom: BorderSide(
                      color: Get.theme.colorScheme.onError,
                      width: 1.0,
                    ),
                  ),
                color:  Get.theme.colorScheme.secondary.withOpacity(0.7),
            ),
            child: Row(
              children: [
                Container(
                  height: AppSize.s56,
                  width: AppSize.s56,
                  decoration: BoxDecoration(
                      color: Get.theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(AppSize.s6)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: AppSize.s10),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Image.asset(AppAssets.gmailIc),
                  ),
                ),
                SizedBox(width: AppSize.s10,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gmail", style: TextStyle(color: Get.theme.colorScheme.inverseSurface, fontSize: AppSize.textXMedium),),
                      Text("imfarhad01@gmail.com", style: TextStyle(color: Get.theme.colorScheme.onBackground, fontSize: AppSize.textMedium),),

                    ],
                  ),
                ),



              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(AppSize.s16),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    margin: EdgeInsets.symmetric(vertical: AppSize.s8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        color: Get.theme.colorScheme.surface
                    ),
                    child: Row(
                      children: [
                        GradientCircularProgressIndicator(
                          progress: 0.75, // Specify the progress value between 0 and 1
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD59FFF),
                              Color(0xFF75D7F5),
                              Color(0xFF5093FF),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          backgroundColor: Colors.grey, // Specify the background color
                          child: Padding(
                            padding: EdgeInsets.all(AppSize.s8),
                            child: Text('49'),
                          ), // Optional child widget
                        ),
                        SizedBox(width: AppSize.s10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("One Time Passcode", style: TextStyle(color: AppColor.homeCrdTxt1Light, fontSize: AppSize
                                  .textXSmall),),
                              Text("759 854", style: TextStyle(color: Get.theme.colorScheme.onSecondary, fontSize: AppSize.textXLarge),),

                            ],
                          ),
                        ),




                        Icon(Icons.copy_outlined, color: AppColor.homeCrdTxt1Light,)

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    margin: EdgeInsets.symmetric(vertical: AppSize.s8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        color: Get.theme.colorScheme.surface
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.password, color: Get.theme.colorScheme.onSecondary,),
                        SizedBox(width: AppSize.s10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(""),
                              Text("Change Password", style: TextStyle(color: Get.theme.colorScheme.onSecondary, fontSize: AppSize
                                  .textMedium),),
                              Text(""),

                            ],
                          ),
                        ),




                        Icon(Icons.arrow_forward_ios_sharp, color: Get.theme.colorScheme.onSecondary,)

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    margin: EdgeInsets.symmetric(vertical: AppSize.s8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        color: Get.theme.colorScheme.surface
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.history, color: Get.theme.colorScheme.onSecondary,),
                        SizedBox(width: AppSize.s10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(""),
                              Text("Review Recent Activity", style: TextStyle(color: Get.theme.colorScheme.onSecondary, fontSize: AppSize
                                  .textMedium),),
                              const Text(""),

                            ],
                          ),
                        ),




                        Icon(Icons.arrow_forward_ios_sharp, color: Get.theme.colorScheme.onSecondary,)

                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(AppSize.s16),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        color: Get.theme.colorScheme.surface,
                      border: Border.all(
                        color: AppColor.cardStrokeRed,
                          width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.close, color: AppColor.cardStrokeRed,),
                        Text("Remove Account", style: TextStyle(color: AppColor.cardStrokeRed,),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
