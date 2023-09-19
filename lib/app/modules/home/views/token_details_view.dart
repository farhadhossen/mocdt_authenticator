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
            margin: EdgeInsets.symmetric(vertical: AppSize.s8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s10),
                // color: AppColor.cardBlack
            ),
            child: Row(
              children: [
                Container(
                  height: AppSize.s56,
                  width: AppSize.s56,
                  decoration: BoxDecoration(
                      color: AppColor.colorBlack,
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
                      Text("Gmail", style: TextStyle(color: AppColor.cardStrokeWhite, fontSize: AppSize.textXMedium),),
                      Text("imfarhad01@gmail.com", style: TextStyle(color: AppColor.cardStrokeWhite, fontSize: AppSize.textMedium),),

                    ],
                  ),
                ),



              ],
            ),
          )
        ],
      ),

    );
  }
}
