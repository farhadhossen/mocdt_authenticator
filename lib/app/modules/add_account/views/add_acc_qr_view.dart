import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';
import '../controllers/add_account_controller.dart';

class AddAccQrView extends GetView<AddAccountController> {
  const AddAccQrView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Scan QR",),
      body: const Center(
        child: Text(
          'Scan QR onGoing',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
