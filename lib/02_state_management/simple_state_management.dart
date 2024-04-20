import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/02_state_management/simple_getx.dart';
import 'package:get/get.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple statemanagement"),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              //  initState: (_) {},
              builder: (controller) {
                return Text(
                  "${controller.counter}",
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            GetX<Controller>(
              builder: (controller) => Text(
                controller.name.value,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Controller.to.increment(),
        onPressed: () => Get.find<Controller>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
