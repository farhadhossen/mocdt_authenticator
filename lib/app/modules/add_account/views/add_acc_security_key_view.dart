import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_account_controller.dart';

class AddAccSecKyView extends GetView<AddAccountController> {
  const AddAccSecKyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('Add Security Key'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(AppSize.s10),
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add account to Mocdt Authenticator by Security key.",
            style: TextStyle(
              fontSize: AppSize.textSmall,
              color: AppColor.whiteText.withOpacity(.45)
            ),),
            SizedBox(height: AppSize.s20,),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(AppSize.s20),
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
                contentPadding: EdgeInsets.all(AppSize.s20),
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
          ],
        ),
      ),
    );
  }
}
