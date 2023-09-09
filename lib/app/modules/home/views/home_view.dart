import 'package:authenticator/app/styles/app_style.dart';
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
          Container(
            padding: EdgeInsets.all(AppSize.s20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search, color: AppColor.bottomNavTextDark,),
                    hintStyle: TextStyle(color: AppColor.bottomNavTextDark),
                    filled: true,
                    fillColor: AppColor.cardBlack,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: AppColor.bottomNavTextDark),
                    ),
                  ),
                )
              ],
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
