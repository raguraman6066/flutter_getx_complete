import 'package:get/get.dart';

import 'user_controller.dart';
import 'user_provider.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProvider());
    Get.lazyPut(() => UserController(userProvider: Get.find()));
  }
}
