import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/Controller/LoginController.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            Obx(
              () => Text("Email entered: ${loginController.email.value}"),
            ),
          ],
        ),
      ),
    );
  }
}
