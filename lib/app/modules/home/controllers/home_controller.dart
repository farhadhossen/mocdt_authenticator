import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/home_view.dart';
import '../views/notification_view.dart';
import '../views/profile_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


  RxInt currentTab = 0.obs;

  final List<Widget> screens = const [
    HomeView(),
    NotificationView(),
    ProfileView()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const HomeView();

  void onItemTapped(int index) {
    currentTab.value = index;
    currentScreen = screens[index];
    // onLogout();
  }


}
