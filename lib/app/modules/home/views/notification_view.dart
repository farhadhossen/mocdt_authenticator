import 'package:authenticator/app/styles/app_style.dart';
import 'package:authenticator/app/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

import '../../../data/services/theme_services.dart';
import '../../../widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class NotificationView extends GetView<HomeController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("-------------------------");
    return Scaffold(
      // backgroundColor: Get.theme.colorScheme.background,
      backgroundColor: Get.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "Authenticator",),
      // AppBar(
      //   backgroundColor: AppColor.primaryBlack,
      //   title: Text('Authenticator', style: TextStyle(color: AppColor.cardStrokeWhite),),
      //   centerTitle: true,
      //   elevation: AppSize.s8,
      //     shadowColor: AppColor.cardStrokeWhite
      // ),
      body: Column(
        children: [
          // SizedBox(height: AppSize.s16,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppSize.s20),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                  itemBuilder: (ctx, index){
                return Container(
                  padding: EdgeInsets.all(AppSize.s10),
                  child: Row(
                    children: [
                      SizedBox(
                        height: AppSize.s36,
                        width: AppSize.s36,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(AppAssets.fbIc),
                        ),
                      ),
                      SizedBox(width: AppSize.s10,),
                      Expanded(
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Text("Facebook", style: GoogleFonts.inter(textStyle: TextStyle(color: AppColor.cardStrokeWhite,
                                fontSize: AppSize.textXSmall)),),
                                SizedBox(width: AppSize.s6,),
                                Text("•", style: GoogleFonts.inter(textStyle: TextStyle(color: AppColor.cardStrokeWhite)),),
                                SizedBox(width: AppSize.s6,),
                                Text("12:15 AM", style: GoogleFonts.inter(textStyle: TextStyle(color: AppColor.cardStrokeWhite,
                                    fontSize: AppSize.textXXSmall)),),

                              ],
                            ),

                            SizedBox(height: AppSize.s6,),

                            Text("Login Alert: Your “infectedx” account has a new login session", style: GoogleFonts.inter(textStyle: TextStyle(color: AppColor.cardStrokeWhite,
                                fontSize: AppSize.textXSmall)),),

                          ],
                        ),
                      ),
                      Icon(Icons.more_vert, size: AppSize.s26, color: AppColor.cardStrokeWhite,)
                      
                    ],
                  ),
                );
              }
              ),
            ),
          )
        ],
      ),
    );
  }
}
