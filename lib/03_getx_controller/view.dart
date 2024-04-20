import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'detail_page.dart';

class GetxControllerExample extends StatelessWidget {
  GetxControllerExample({super.key});
  final controller = Get.put(GetController()); //this is for obx
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX controller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetX<GetController>(
            //   init: GetController(), //oninit and onready called
            //   initState: (_) {},
            //   builder: (controller) {
            //     return Text(
            //       "${controller.count.value}",
            //       style: TextStyle(fontSize: 25),
            //     );
            //   },
            // ),
            // Obx(() => Text(
            //       "${controller.count.value}",
            //       style: TextStyle(fontSize: 25),
            //     )),
            //simple state management-getbuilder
            GetBuilder<GetController>(
              id: 'counter1',
              init: GetController(),
              initState: (_) {},
              builder: (controller) {
                return Text(
                  "${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            // GetBuilder<GetController>(
            //   id: 'counter2',
            //   initState: (_) {},
            //   builder: (controller) {
            //     return Text(
            //       "${controller.count}",
            //       style: TextStyle(fontSize: 25),
            //     );
            //   },
            // ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => DetailsPage());
                },
                child: Text("details page"))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Get.find<GetController>().increment(),
      //   //  onPressed: () => Get.find<GetController>().clearCount(),
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
