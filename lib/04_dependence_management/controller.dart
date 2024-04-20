import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  final count = 0.obs;
  void increment() {
    count.value++;
  }

  @override
  void onInit() {
    //called immediately after the widget is allocated memory
    print("onInit called");
    super.onInit();
  }

  @override
  void onReady() {
    //called after the widget is rendered on screen
    print("onReady called");
    super.onReady();
  }

  @override
  void onClose() {
    //called just before controller is deleted from memory
    print("onClose called");
    super.onClose();
  }
}
