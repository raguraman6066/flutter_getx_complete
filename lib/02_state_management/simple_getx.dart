import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();
  final name = 'Ratt'.obs;
  int counter = 0;
  void increment() {
    counter++;
    update(); //comes from getxcontroller
  }
}


//for simple state management use get_builder