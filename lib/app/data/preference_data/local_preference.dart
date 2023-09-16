import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalPreferences extends GetxController {

  static Future<void> initStorage() async {
    await GetStorage.init();
  }

  final token = ''.val('token');
  final profileImg = ''.val('profileImg');
  final empName = ''.val('empName');
  final username = ''.val('username');
  final rankName = ''.val('rankName');
  final roleId = ''.val('roleId');
  final roleName = ''.val('roleName');


  final isOnBoarding = true.val('isOnBoarding');
  final isNight = true.val('isNight');
}
