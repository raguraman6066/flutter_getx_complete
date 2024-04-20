import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/03_getx_controller/detail_page.dart';
import 'package:flutter_getx_complete/04_dependence_management/controller.dart';
import 'package:get/get.dart';

class DependenencyExample extends StatelessWidget {
  DependenencyExample({super.key});
  // final controller = Get.put(MyController()); //initialize the controller one time..singleton
  //use tag for initialize each put_controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx dependency management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     "${controller.count.value}",
            //     style: TextStyle(
            //       fontSize: 25,
            //     ),
            //   ),
            // ),
            ElevatedButton(
                onPressed: () => Get.toNamed('/detail'),
                child: Text("Detail page"))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => controller.increment(),
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
