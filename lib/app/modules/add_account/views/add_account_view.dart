import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_account_controller.dart';

class AddAccountView extends GetView<AddAccountController> {
  const AddAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddAccountView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddAccountView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
