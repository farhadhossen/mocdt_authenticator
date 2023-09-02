import 'dart:io';

import 'package:flutter/material.dart';

import '../../widgets/negative_snackbar.dart';


class InternetChecker{
  static Future<bool> hasInternet() async {
    try {
      final result = await InternetAddress.lookup('www.google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      negativeSnackbar(Icons.signal_wifi_connected_no_internet_4,"No Internet.", "Please check internet connection");
      return false;
    }
  }
}