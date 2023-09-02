import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:authenticator/app/data/preference_data/local_preference.dart';
import 'package:authenticator/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../../widgets/negative_snackbar.dart';


class RemoteServices {
  static var client = http.Client();
  final prefs = Get.find<LocalPreferences>();



  ///Test URL

  static String baseUrl = 'http://192.168.0.102:8080/'; //home

  ///Live URL


  ///sessionOut
  // void sessionOut() {
  //   negativeSnackbar(Icons.person, "Session Out!", "Please Login again");
  //   prefs.token.val = "";
  //   Get.offAllNamed(AppPages.INITIAL);
  // }

  ///user authentication
  // Future<LoginModel> userAuthentication(String username, String password, String fcmToken) async {
  //   final url = '${baseUrl!}api/getSpacificAdminUser';
  //   var response = await client.post(Uri.parse(url),
  //       headers: {'Content-Type': 'application/json; charset=UTF-8'},
  //   body: jsonEncode({"user_id" : username, "password" : password}));
  //   debugPrint("========> "+url.toString());
  //   debugPrint("========> "+response.body.toString());
  //   if (response.statusCode == 200) {
  //     return loginModelFromJson(response.body);
  //   } else if (response.statusCode == 400) {
  //     negativeSnackbar(Icons.warning_outlined, "Warning!", "Username or Password is invalid");
  //     throw const HttpException('userAuthentication Error');
  //   } else {
  //     negativeSnackbar(Icons.warning_outlined, "Warning!", "Something wrong");
  //     throw const HttpException('userAuthentication Error');
  //   }
  // }



}
