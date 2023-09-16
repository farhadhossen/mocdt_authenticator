import 'package:authenticator/app/routes/app_pages.dart';
import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../controllers/add_account_controller.dart';

class AddAccountView extends GetView<AddAccountController> {
  const AddAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,

      appBar: const CustomAppBar(title: "Add Account",),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(AppSize.s10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("To add account for 2FA security you have to scan the QR code from the account setting center or you can enter the security code from the account setting > Add 2FA"),
            SizedBox(height: AppSize.s26,),


            InkWell(
              onTap: (){
                Get.toNamed(AppPages.ADD_ACCOUNT_QR);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(AppSize.s14),
                margin: EdgeInsets.all(AppSize.s4),
                decoration: BoxDecoration(
                  // color: AppColor.whiteText,
                    borderRadius: BorderRadius.circular(AppSize.s10,),
                    border: Border.all(color: AppColor.cardStrokeWhite.withOpacity(0.2), width: 0.8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Icon(Icons.camera_alt_outlined, color: AppColor.whiteText,),
                    SizedBox(width: AppSize.s8,),
                    Text("Scan QR", style: TextStyle(color: AppColor.whiteText),)
                  ],
                ),
              ),
            ),

            SizedBox(height: AppSize.s10,),

            InkWell(
              onTap: (){
                Get.toNamed(AppPages.ADD_ACCOUNT_SEC_KEY);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(AppSize.s14),
                margin: EdgeInsets.all(AppSize.s4),
                decoration: BoxDecoration(
                  // color: AppColor.whiteText,
                    borderRadius: BorderRadius.circular(AppSize.s10,),
                    border: Border.all(color: AppColor.cardStrokeWhite.withOpacity(0.2), width: 0.8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Icon(Icons.keyboard_alt_outlined, color: AppColor.whiteText,),
                    SizedBox(width: AppSize.s8,),
                    Text("Enter Security Key", style: TextStyle(color: AppColor.whiteText),)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
