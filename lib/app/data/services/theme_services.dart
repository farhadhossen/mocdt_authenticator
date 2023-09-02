import 'package:authenticator/app/data/preference_data/local_preference.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class ThemeService{
  final _getStorage = GetStorage();
  final storageKey = "isDarkMode";


  LocalPreferences localPreferences = Get.find<LocalPreferences>();

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSavedDarkMode() {
    return _getStorage.read(storageKey) ?? false;
  }

  void saveThemeMode(bool isDarkMode) {
    _getStorage.write(storageKey, isDarkMode);
  }


  void changeThemeMode() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light :ThemeMode.dark);
    saveThemeMode(!isSavedDarkMode());
  }
}