import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User {
  String name;
  int age;
  User({this.name = '', this.age = 0});

  // var name = "John".obs;
  // var age = 30.obs;
}

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({super.key});
  //1.Rx{Type}
  //initial value recommended not mandatory
  // final name = RxString('');
  // final isLogged = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>([]);
  // final myMap = RxMap<String, int>({});

  //2.Rx<Type>
  // final name = Rx<String>('');
  // final isLogged = Rx<bool>(false);
  // final count = Rx<int>(0);
  // final number = Rx<num>(0);
  // final balance = Rx<double>(0.0);
  // final items = Rx<List<String>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // final user = Rx<User>(User(name: "Hello", age: 30));

  //3.easy and preferred approach
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balace = 0.0.obs;
  final number = 0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;
  //final user = User(name: "john", age: 34).obs;
  //when we use user class fields  obs, use following
  // final user = User();

  final user = User(name: "Rohni", age: 30).obs;

  void toUpper() {
    user(User(name: "RADD"));

    // user.name.value = user.name.toUpperCase();
    // user.age.value++;

    //   user.update((user) {
    //     user!.name = user.name.toUpperCase();
    //     user.age = user.age + 1; //++not work
    //   });
  }

  void increment() => count.value++;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Reactive State"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(
                  'count ${count.value}',
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  //'${user.name} ${user.age}',
                  '${user.value.name} ${user().age}',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //   onPressed: increment,
        onPressed: toUpper,
        child: Icon(Icons.add),
      ),
    );
  }
}


//for obx and getx<controller> must have .obs variable
//not for getbuilder