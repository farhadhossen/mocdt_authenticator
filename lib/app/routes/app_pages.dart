import 'package:get/get.dart';

import '../modules/add_account/bindings/add_account_binding.dart';
import '../modules/add_account/views/add_acc_qr_view.dart';
import '../modules/add_account/views/add_acc_security_key_view.dart';
import '../modules/add_account/views/add_account_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/base_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/notification_view.dart';
import '../modules/home/views/profile_view.dart';
import '../modules/home/views/token_details_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/app_security_view.dart';
import '../modules/settings/views/import_export_view.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static const HOME = Routes.HOME;
  static const BASE = Routes.BASE;
  static const NOTIFICATION = Routes.NOTIFICATION;
  static const PROFILE = Routes.PROFILE;
  static const ADD_ACCOUNT = Routes.ADD_ACCOUNT;
  static const ADD_ACCOUNT_SEC_KEY = Routes.ADD_ACCOUNT_SEC_KEY;
  static const ADD_ACCOUNT_QR = Routes.ADD_ACCOUNT_QR;
  static const TOKEN_DETAIL = Routes.TOKEN_DETAIL;
  static const SETTINGS = Routes.SETTINGS;
  static const IMPORT_EXPORT = Routes.IMPORT_EXPORT;
  static const APP_SECURITY = Routes.APP_SECURITY;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => const BaseView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TOKEN_DETAIL,
      page: () => const TokenDetailsView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ACCOUNT,
      page: () => const AddAccountView(),
      binding: AddAccountBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ACCOUNT_SEC_KEY,
      page: () => const AddAccSecKyView(),
      binding: AddAccountBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ACCOUNT_QR,
      page: () => const AddAccQrView(),
      binding: AddAccountBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.IMPORT_EXPORT,
      page: () => const ImportExportView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.APP_SECURITY,
      page: () => const AppSecurityView(),
      binding: SettingsBinding(),
    ),
  ];
}
