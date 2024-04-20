import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/01_route_management/next_screen.dart';
import 'package:get/get.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var data = await Get.to(() => NextScreen(),
                      transition: Transition.leftToRight,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeOut,
                      arguments: "hello from get.to");
                  print(data); //get from previous page
                },
                child: Text("Get.to(NextScreen())")),
            ElevatedButton(
                onPressed: () {
                  Get.off(NextScreen(),
                      arguments: "hello from get.off()"); //replace
                },
                child: Text("Get.off(NextScreen())")),
            ElevatedButton(
                onPressed: () {
                  //Get.toNamed('/next/123', use when parameter is used in name
                  Get.toNamed(
                    '/next?id=456', //this is direct
                    arguments: "hello world from get.toNamed",
                  );
                },
                child: Text("Get.toNamed('/next')")),
            ElevatedButton(
                onPressed: () {
                  Get.offNamed('/next', arguments: "hello from offNamed");
                },
                child: Text("Get.offNamed('/next')")),
            ElevatedButton(
                onPressed: () {
                  Get.offAllNamed('/next', arguments: "hello from offNamed");
                  // Get.offAll(NextScreen(), arguments: "hello from offNamed");
                },
                child: Text("Get.offAllNamed('/next')")),
          ],
        ),
      ),
    );
  }
}
