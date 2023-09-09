import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/app_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int index;

  const CustomAppBar({
    Key? key,
    this.title = "Default Title",
    this.index = 0,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppSize.s50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.primaryBlack,
      elevation: 0,
      title: Text(title,
          style: GoogleFonts.poppins(textStyle: TextStyle(color: AppColor.cardStrokeWhite, fontWeight: FontWeight.w600),)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: AppColor.appBarStock,
            width: 1.0,
          ),
        )),
      ),
    );
  }
}
