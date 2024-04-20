import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_binding.dart';
import 'user_view.dart';

class ConnectExample extends StatelessWidget {
  const ConnectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: UserView(),
      debugShowCheckedModeBanner: false,
      initialBinding: UserBinding(),
    );
  }
}
