import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/08_get_connect_rest_api/user_controller.dart';
import 'package:get/get.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Human Resources",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: controller.obx(
            (data) => ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: data!.legth,
              itemBuilder: (context, index) {
                UserProfile(user: data[index]);
              },
            ),
            onLoading: CircularProgressIndicator(),
            onError: (error) => Text("Error $error"),
          ))
        ],
      ),
    );
  }
}
