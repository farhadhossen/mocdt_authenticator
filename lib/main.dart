import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/data/preference_data/local_preference.dart';
import 'app/data/services/theme_services.dart';
import 'app/modules/home/bindings/home_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialConfig();

  runApp(const MyApp());
}

Future<void> initialConfig() async {
  await Get.put(LocalPreferences.initStorage());
  Get.put(LocalPreferences());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => child!,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "HEnterprise",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        initialBinding: HomeBinding(),
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
        themeMode: ThemeService().getThemeMode(),
      ),
    );
  }
}
