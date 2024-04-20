import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetController extends GetxController {
  int count = 0;
  // final count = 0.obs;
  void increment() {
    //   count.value++;
    count++;
    update();
    //update(['counter1']); //getbuilder id- counter1 only change
    // update(['counter1'], count < 10);
  }

  void clearCount() {
    // count.value = 0;
    count = 0;
    update();
  }

  @override
  void onInit() {
    print("Controller oninit been called");
    super.onInit();

    // ever(count, (_) => print("$_ has been changed1"));// single object or variable.
    //  everAll([count], (_) => print("$_ has been changed2"));//multiple objects or variables.
    // once(count, (_) => print("$_ has been changed")); //one time it called

    // debounce(count, (_) => print("debounce $_"),
    //     time: Duration(
    //         milliseconds:
    //             1000)); //use for search ..to execute with time each time

//ignore all changes wihtin 1000 ms

    // interval(count, (_) => print("interval $_"),
    //     time: Duration(milliseconds: 1000));
  }

  @override
  void onReady() {
    print('controller onready called');
    super.onReady();
  }

  @override
  void onClose() {
    print('controller onclose called');
    clearCount();
    super.onClose();
  }
}
