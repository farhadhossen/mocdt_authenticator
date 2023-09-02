import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_style.dart';


SnackbarController informationSnackbar(String message){
  return Get.showSnackbar(
    GetSnackBar(
      borderRadius: 10,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      snackPosition: SnackPosition.TOP,
      icon: const Icon(Icons.info_outline_rounded, size: 30,color: Colors.white),
      titleText: const Text("Information", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700)),
      messageText: Text(" $message", style: const TextStyle(color: Colors.white,fontSize: 16)),
      duration: const Duration(seconds: 2),
      backgroundColor: AppColor.textOrange.withOpacity(.9),
    ),
  );
}