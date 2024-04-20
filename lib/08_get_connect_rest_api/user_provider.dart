import 'package:get/get.dart';

import 'user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://reqres.in/";
    httpClient.defaultDecoder = UserModel.listFromJson;
    super.onInit();
  }

  Future<Response<List<UserModel>>> getUsers() => get('api/users');
}
