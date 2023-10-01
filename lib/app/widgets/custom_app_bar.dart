import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      backgroundColor: context.theme.colorScheme.primaryContainer,
      elevation: 0,
      title: Text(title,
          style: GoogleFonts.poppins(textStyle: TextStyle(color: context.theme.colorScheme.onSecondary, fontWeight: FontWeight.w600),)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: context.theme.colorScheme.outline,
            width: 1.0,
          ),
        )),
      ),
    );
  }
}
