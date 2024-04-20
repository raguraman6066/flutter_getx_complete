import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/06_themes/themes_controller.dart';
import 'package:get/get.dart';

class ThemeExample extends StatelessWidget {
  ThemeExample({super.key});
  final controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Change Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GetX Theme',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (Get.isDarkMode) {
                    controller.changeTheme(ThemeData.light());
                    controller.saveTheme(false);
                  } else {
                    controller.changeTheme(ThemeData.dark());
                    controller.saveTheme(true);
                  }
                },
                child: Text('Change Theme'))
          ],
        ),
      ),
    );
  }
}
