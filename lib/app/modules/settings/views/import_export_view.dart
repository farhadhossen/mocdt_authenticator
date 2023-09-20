import 'package:authenticator/app/styles/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/custom_app_bar.dart';
import '../controllers/settings_controller.dart';

class ImportExportView extends GetView<SettingsController> {
  const ImportExportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "Import/Export Tokens",),
      body: Container(
        padding: EdgeInsets.all(AppSize.s10),
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(AppSize.s16),
              // height: AppSize.s42+AppSize.s6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.appBarStock,
                  borderRadius: BorderRadius.circular(AppSize.s8)
              ),
              child: Row(
                children: [
                  Expanded(child: Text("Import tokens", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: AppSize.textSmall,
                      fontWeight: FontWeight.w500))
                    ,)),
                  Container(
                    padding: EdgeInsets.all(AppSize.s6),
                    decoration: BoxDecoration(
                        color: AppColor.appBarStock,
                      border: Border.all(color: AppColor.cardStrokeWhite),
                      borderRadius: BorderRadius.circular(AppSize.s4)
                    ),
                    child: Text("Browse File"),
                  )
                ],
              ),
            ),

            SizedBox(height: AppSize.s10,),
            Text("Import token files to add your accounts which was linked to another third party authenticator app previously. ",
            style: TextStyle(color: AppColor.descripTextDark, fontSize: AppSize.textXSmall),),
            SizedBox(height: AppSize.s26,),

            Container(
              padding: EdgeInsets.all(AppSize.s16),
              // height: AppSize.s42+AppSize.s6,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.appBarStock,
                  borderRadius: BorderRadius.circular(AppSize.s8)
              ),
              child: Row(
                children: [
                  Expanded(child: Text("Exports Token", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: AppSize.textSmall,
                      fontWeight: FontWeight.w500))
                    ,)),
                  Container(
                    padding: EdgeInsets.all(AppSize.s6),
                    decoration: BoxDecoration(
                        color: AppColor.buttonWhite,
                        border: Border.all(color: AppColor.cardStrokeWhite),
                        borderRadius: BorderRadius.circular(AppSize.s4)
                    ),
                    child: Text("Browse File", style: TextStyle(color: AppColor.semiBlack80),),
                  )
                ],
              ),
            ),

            SizedBox(height: AppSize.s10,),
            Text("Export existing accounts authenticator information as token.",
              style: TextStyle(color: AppColor.descripTextDark, fontSize: AppSize.textXSmall),),

          ],
        ),
      ),
    );
  }
}
