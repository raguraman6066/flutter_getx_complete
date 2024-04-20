import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("argument: ${Get.arguments} "),
            Text("parameter: ${Get.parameters['id']} "),
            ElevatedButton(
                onPressed: () {
                  Get.back(
                    result: "success",
                    closeOverlays: false,
                  );
                },
                child: Text("go back"))
          ],
        ),
      ),
    );
  }
}
