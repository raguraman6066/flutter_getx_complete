import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'settings_service.dart';

class ServiceView extends GetView<SettingsService> {
  //controller
  ServiceView({super.key});

  // final controller = Get.put(SettingsService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Service"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Pressed ${controller.counter} times',
                  style: TextStyle(fontSize: 22),
                )),
            ElevatedButton(
                onPressed: () => controller.incrementCounter(),
                child: Text("Increase"))
          ],
        ),
      ),
    );
  }
}
