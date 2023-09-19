import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../controllers/add_account_controller.dart';

class AddAccSecKyView extends GetView<AddAccountController> {
  const AddAccSecKyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "Add Security Key",),
      body: Container(
        padding: EdgeInsets.all(AppSize.s10),
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSize.s20,),

            Text("Add account to Mocdt Authenticator by Security key.",
            style: TextStyle(
              fontSize: AppSize.textSmall,
              color: AppColor.whiteText.withOpacity(.45)
            ),),
            SizedBox(height: AppSize.s26,),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(AppSize.s16),
                hintText: 'Account Name',
                // prefixIcon: Icon(Icons.search, color: AppColor.bottomNavTextDark,),
                hintStyle: TextStyle(color: AppColor.bottomNavTextDark),
                filled: true,
                fillColor: AppColor.cardBlack,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColor.whiteText.withOpacity(0.45)
                  )
                  // borderSide:  BorderSide(
                  //   width: 0,
                  //   style: BorderStyle.none,
                  // ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: 2,
                        color: AppColor.whiteText.withOpacity(0.45)
                    )
                ),
                disabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1,
                    color: AppColor.whiteText.withOpacity(0.20)
                )
            ),
              ),
            ),
            SizedBox(height: AppSize.s20,),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(AppSize.s16),
                hintText: 'Enter Key',
                // prefixIcon: Icon(Icons.search, color: AppColor.bottomNavTextDark,),
                hintStyle: TextStyle(color: AppColor.bottomNavTextDark),
                filled: true,
                fillColor: AppColor.cardBlack,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColor.whiteText.withOpacity(0.45)
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: 2,
                        color: AppColor.whiteText.withOpacity(0.45)
                    )
                ),
                disabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: 1,
                        color: AppColor.whiteText.withOpacity(0.20)
                    )
                ),
              ),
            ),
            SizedBox(height: AppSize.s20,),

            SizedBox(
              width: double.infinity,
              height: AppSize.s42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.buttonWhite
                ),
                onPressed: (){},
                child: Text("Add Account", style: TextStyle(color: AppColor.primaryBlack),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
