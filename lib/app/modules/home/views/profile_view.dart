import 'package:authenticator/app/routes/app_pages.dart';
import 'package:authenticator/app/styles/app_style.dart';
import 'package:authenticator/app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/services/theme_services.dart';
import '../../../widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class ProfileView extends GetView<HomeController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("-------------------------");
    return Scaffold(
      // backgroundColor: Get.theme.colorScheme.background,
      backgroundColor: context.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "Authenticator",),
      // AppBar(
      //   backgroundColor: AppColor.primaryBlack,
      //   title: Text('Authenticator', style: TextStyle(color: AppColor.cardStrokeWhite),),
      //   centerTitle: true,
      //   elevation: AppSize.s8,
      //     shadowColor: AppColor.cardStrokeWhite
      // ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s10),
        child: Column(
          children: [
            Container(
              
              decoration: BoxDecoration(
                // color: AppColor.whiteText,
                borderRadius: BorderRadius.circular(AppSize.s10,),
                border: Border.all(color: AppColor.cardStrokeWhite.withOpacity(0.2), width: 0.8)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: double.infinity,),
                  Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.colorWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s10),
                        topRight: Radius.circular(AppSize.s10),
                      )
                    ),
                    child: Text("Authenticator Backup Key", style: GoogleFonts.inter(textStyle: TextStyle(
                      fontSize: AppSize.textSmall,
                      color: AppColor.primaryAppColor
                    )),),
                  ),
                  Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.appBarStock,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppSize.s10),
                          bottomRight: Radius.circular(AppSize.s10),
                        )
                    ),
                    child: Column(
                      children: [
                        Text("Authenticator BaIt’s important to preserve your backup keys. You can get the tokens if you want to use these account further.", style: GoogleFonts.inter(textStyle: TextStyle(
                            fontSize: AppSize.textSmall,
                            color: AppColor.cardStrokeWhite
                        )),),
                        
                        SizedBox(height: AppSize.s20,),
                        
                        Container(
                          width: double.infinity,
                          height: AppSize.s42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            border: Border.all(color: AppColor.cardStrokeWhite)
                          ),
                          child: Center(
                            child: Text("Copy Backup Key", style: TextStyle(
                              fontSize: AppSize.textSmall, color: AppColor.cardStrokeWhite
                            ),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: AppSize.s10,),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppSize.s8),
              margin: EdgeInsets.all(AppSize.s4),
              decoration: BoxDecoration(
                // color: AppColor.whiteText,
                  borderRadius: BorderRadius.circular(AppSize.s10,),
                  border: Border.all(color: AppColor.cardStrokeWhite.withOpacity(0.2), width: 0.8),
                  color: context.theme.colorScheme.outline
              ),
              child: Row(
                children: [
                  Container(
                    height: AppSize.s36,
                    width: AppSize.s36,
                    decoration: BoxDecoration(
                      color: AppColor.cardStrokeWhite,
                      borderRadius: BorderRadius.circular(AppSize.s6)
                    ),
                    child: Icon(Icons.nightlight_round, color: AppColor.primaryBlack,),
                  ),
                  SizedBox(width: AppSize.s6,),
                  Expanded(child: Text("Dark Mode", style: TextStyle(fontSize: AppSize.textSmall),)),
                  // Switch(
                  //     value: controller.isNight.value, onChanged: (value){
                  //   ThemeService().changeThemeMode();
                  //   controller.isNight.value = value;
                  // }
                  // ),

              FlutterSwitch(
                width: AppSize.s42+AppSize.s6,
                value: controller.isNight.value,
                borderRadius: 30.0,
                activeColor: AppColor.activeGreen,
                onToggle: (value) {
                  ThemeService().changeThemeMode();
                  controller.isNight.value = value;
                  }
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
                  Container(
                    height: AppSize.s36,
                    width: AppSize.s36,
                    decoration: BoxDecoration(
                      color: AppColor.cardStrokeWhite,
                      borderRadius: BorderRadius.circular(AppSize.s6)
                    ),
                    child: Icon(Icons.lock, color: AppColor.primaryBlack,),
                  ),
                  SizedBox(width: AppSize.s6,),
                  Expanded(child: Text("App Security", style: TextStyle(fontSize: AppSize.textSmall),)),
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppPages.APP_SECURITY);
                    },
                      child: Icon(Icons.play_arrow_rounded, color: AppColor.colorGrey,))
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
                  Container(
                    height: AppSize.s36,
                    width: AppSize.s36,
                    decoration: BoxDecoration(
                        color: AppColor.cardStrokeWhite,
                        borderRadius: BorderRadius.circular(AppSize.s6)
                    ),
                    child: Icon(Icons.login_outlined, color: AppColor.primaryBlack,),
                  ),
                  SizedBox(width: AppSize.s6,),
                  Expanded(child: Text("Import/Export Tokens", style: TextStyle(fontSize: AppSize.textSmall),)),
                  InkWell(
                      onTap: (){
                        Get.toNamed(AppPages.IMPORT_EXPORT);
                      },
                      child: Icon(Icons.play_arrow_rounded, color: AppColor.colorGrey,))
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
                  Container(
                    height: AppSize.s36,
                    width: AppSize.s36,
                    decoration: BoxDecoration(
                        color: AppColor.cardStrokeWhite,
                        borderRadius: BorderRadius.circular(AppSize.s6)
                    ),
                    child: Icon(Icons.support_agent, color: AppColor.primaryBlack,),
                  ),
                  SizedBox(width: AppSize.s6,),
                  Expanded(child: Text("Support", style: TextStyle(fontSize: AppSize.textSmall),)),
                  Icon(Icons.outbond, color: AppColor.colorGrey,)
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
                  Container(
                    height: AppSize.s36,
                    width: AppSize.s36,
                    decoration: BoxDecoration(
                        color: AppColor.cardStrokeWhite,
                        borderRadius: BorderRadius.circular(AppSize.s6)
                    ),
                    child: Icon(Icons.info, color: AppColor.primaryBlack,),
                  ),
                  SizedBox(width: AppSize.s6,),
                  Expanded(child: Text("About", style: TextStyle(fontSize: AppSize.textSmall),)),
                  Icon(Icons.outbond, color: AppColor.colorGrey,)
                ],
              ),
            ),


          ],
        ),
      ),

    );
  }
}
