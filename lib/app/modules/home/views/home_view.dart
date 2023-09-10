import 'package:authenticator/app/styles/app_style.dart';
import 'package:authenticator/app/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/services/theme_services.dart';
import '../../../widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("-------------------------");
    return Scaffold(
      // backgroundColor: Get.theme.colorScheme.background,
      backgroundColor: context.theme.colorScheme.background,
      appBar: CustomAppBar(title: "Authenticator",),
      // AppBar(
      //   backgroundColor: AppColor.primaryBlack,
      //   title: Text('Authenticator', style: TextStyle(color: AppColor.cardStrokeWhite),),
      //   centerTitle: true,
      //   elevation: AppSize.s8,
      //     shadowColor: AppColor.cardStrokeWhite
      // ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(AppSize.s20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(AppSize.s2),
                      hintText: 'Search Accounts',
                      prefixIcon: Icon(Icons.search, color: AppColor.bottomNavTextDark,),
                      hintStyle: TextStyle(color: AppColor.bottomNavTextDark),
                      filled: true,
                      fillColor: AppColor.cardBlack,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: AppSize.s20,),

                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                        itemBuilder: (ctx, index){
                      return Container(
                        padding: EdgeInsets.all(AppSize.s10),
                        margin: EdgeInsets.symmetric(vertical: AppSize.s8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSize.s10),
                          color: AppColor.cardBlack
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: AppSize.s50,
                              width: AppSize.s36,
                              decoration: BoxDecoration(
                                color: AppColor.primaryBlack,
                                borderRadius: BorderRadius.circular(AppSize.s6)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: AppSize.s6),
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
                                  Text("Gmail", style: TextStyle(color: AppColor.homeCardTitleDark, fontSize: AppSize.textXSmall),),
                                  Text("759 854", style: TextStyle(color: AppColor.homeCardTitleDark, fontSize: AppSize.textXLarge),),
                                  Text("imfarhad01@gmail.com", style: TextStyle(color: AppColor.homeCardTitleDark, fontSize: AppSize.textXSmall),),

                                ],
                              ),
                            ),

                            SizedBox(
                              height: AppSize.s42,
                              width: AppSize.s42,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(AppAssets.timerIc),
                              ),
                            ),

                            Icon(Icons.play_arrow_rounded, color: AppColor.iconBlue,)

                          ],
                        ),
                      );
                    }),
                  )

                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ThemeService().changeThemeMode();
        },
        child: const Icon(Icons.nightlight),
      ),
    );
  }
}
