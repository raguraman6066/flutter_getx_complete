import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'translation_controller.dart';

class Example extends StatelessWidget {
  final messageController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Internationalization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            Text(
              'logged_in'.trParams(
                {'name': 'John', 'email': 'john123@gmail.com'},
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                messageController.changeLanguage('en', 'US');
              },
              child: Text("English"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                messageController.changeLanguage('es', 'ES');
              },
              child: Text("Spanish"),
            ),
          ],
        ),
      ),
    );
  }
}
