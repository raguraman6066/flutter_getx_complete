import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/04_dependence_management/controller.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
