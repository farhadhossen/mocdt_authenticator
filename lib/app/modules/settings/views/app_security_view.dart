import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../controllers/settings_controller.dart';

class AppSecurityView extends GetView<SettingsController> {
  const AppSecurityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: const CustomAppBar(title: "App Security",),
      body: const Center(
        child: Text(
          'SettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
