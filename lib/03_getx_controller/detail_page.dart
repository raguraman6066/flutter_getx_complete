import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/02_state_management/simple_getx.dart';
import 'package:flutter_getx_complete/03_getx_controller/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  // final controller = Get.put(
  //  GetController()); //when we replace page..we again put controller otherwise we can find it

  final controller = Get.find<GetController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("details page"),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<GetController>(
              //id: "counter1",
              //    init: GetController(),
              builder: (controller) {
                return Text(
                  "${controller.count}",
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            // GetBuilder<GetController>(
            //   id: "counter2",
            //   init: GetController(),
            //   initState: (_) {},
            //   builder: (controller) {
            //     return Text(
            //       "${controller.count}",
            //       style: TextStyle(fontSize: 20),
            //     );
            //   },
            // ),
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
