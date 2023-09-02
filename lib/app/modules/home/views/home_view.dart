import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/services/theme_services.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("-------------------------");
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ThemeService().changeThemeMode();
        },
        child: const Icon(Icons.nightlight),
      ),
    );
  }
}
