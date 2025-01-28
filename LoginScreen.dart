import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/Controller/LoginController.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) => loginController.email.value = value,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              onChanged: (value) => loginController.password.value = value,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(height: 26),
            Obx(
              () => ElevatedButton(
                onPressed: loginController.loading.value
                    ? null
                    : () => loginController.login(),
                child: loginController.loading.value
                    ? CircularProgressIndicator(color: Colors.black)
                    : const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
