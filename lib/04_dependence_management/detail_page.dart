import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/02_state_management/simple_getx.dart';

import 'package:flutter_getx_complete/04_dependence_management/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  // final controller = Get.put(
  //  GetController()); //when we replace page..we again put controller otherwise we can find it

  final controller = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("details page"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                "${controller.count.value}",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: () => Get.find<GetController>().increment(),
        onPressed: () => controller.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
