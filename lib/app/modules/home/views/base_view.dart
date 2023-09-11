import 'package:authenticator/app/styles/app_style.dart';
import 'package:authenticator/app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

import '../../../data/services/theme_services.dart';
import '../../../widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class BaseView extends GetView<HomeController> {
  const BaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.defaultDialog(
            title: "Exit App",
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Do you want to exit from the app?", textAlign: TextAlign.center,),
                SizedBox(height: AppSize.s16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: AppColor.accentColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s20))),
                      onPressed: (){
                        Get.back();
                      }, child: const Text("No"),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: AppColor.colorWhite,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s20))),
                      onPressed: (){
                        SystemNavigator.pop();
                      }, child: const Text("Yes"),),
                  ],
                )
              ],
            )
        );
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Obx(
              () => Column(
            children: [
              Visibility(visible: false, child: Text("${controller.currentTab.value}")),
              Expanded(
                child: PageStorage(
                  bucket: controller.bucket,
                  child: controller.currentScreen,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
        BottomAppBar(
          // color: Colors.yellow[100],
            shape: const CircularNotchedRectangle(),
            child: Obx(
                    ()=>SizedBox(
                  height: AppSize.s64,
                  child: Stack(
                    children: [

                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide( //                   <--- right side
                                color: Colors.grey.withOpacity(0.5),
                                width: 1.0,
                              ),
                            ),
                          color: AppColor.primaryBlack
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          InkWell(
                            onTap: (){
                              controller.onItemTapped(0);
                            },
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: AppSize.s4),
                                    decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide( //
                                            color: controller.currentTab.value == 0? AppColor.whiteText:Colors.transparent,
                                            width: 3.0,
                                          ),
                                        )
                                    ),
                                    child: Icon(Icons.security, color: controller.currentTab.value == 0? AppColor.whiteText:AppColor.colorGrey,)),
                                SizedBox(height: AppSize.s6,),
                                Text("Token", style: TextStyle(color: controller.currentTab.value == 0? AppColor.whiteText:AppColor.colorGrey,),)
                              ],
                            ),
                          ),


                          InkWell(
                            onTap: (){controller.onItemTapped(1);},
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: AppSize.s4),
                                    decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide( //
                                            color: controller.currentTab.value == 1? AppColor.whiteText:Colors.transparent,
                                            width: 3.0,
                                          ),
                                        )
                                    ),
                                    child: Icon(Icons.notifications, color: controller.currentTab.value == 1? AppColor.whiteText:AppColor.colorGrey,)),
                                SizedBox(height: AppSize.s6,),
                                Text("Notification", style: TextStyle(color: controller.currentTab.value == 1? AppColor.whiteText:AppColor.colorGrey,),)
                              ],
                            ),
                          ),


                          InkWell(
                            onTap: (){controller.onItemTapped(2);},
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: AppSize.s4),
                                    decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide( //
                                            color: controller.currentTab.value == 2? AppColor.whiteText:Colors.transparent,
                                            width: 3.0,
                                          ),
                                        )
                                    ),
                                    child: Icon(Icons.settings, color: controller.currentTab.value == 2? AppColor.whiteText:AppColor.colorGrey,)),
                                SizedBox(height: AppSize.s6,),
                                Text("Profile", style: TextStyle(color: controller.currentTab.value == 2? AppColor.whiteText:AppColor.colorGrey,),)
                              ],
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),
                )
                ),
            ),

      ),
    );
  }
}