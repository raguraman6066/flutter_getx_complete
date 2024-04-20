import 'package:flutter_getx_complete/08_get_connect_rest_api/user_provider.dart';
import 'package:get/get.dart';

import 'user_model.dart';

class UserController extends GetxController with StateMixin<List<UserModel>> {
  final UserProvider userProvider;
  UserController({required this.userProvider, cityProvider});

  @override
  void onInit() {
    fetchAllUsers();
    super.onInit();
  }

  void fetchAllUsers() {
    userProvider.getUsers().then((result) {
      List<UserModel>? data = result.body;
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
