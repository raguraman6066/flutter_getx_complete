import 'package:flutter/material.dart';
import 'package:flutter_getx_complete/01_route_management/next_screen.dart';
import 'package:flutter_getx_complete/01_route_management/routes_screen.dart';
import 'package:flutter_getx_complete/02_state_management/reactive_getx.dart';
import 'package:flutter_getx_complete/02_state_management/simple_state_management.dart';

import 'package:flutter_getx_complete/04_dependence_management/binding.dart';
import 'package:flutter_getx_complete/04_dependence_management/class.dart';
import 'package:flutter_getx_complete/04_dependence_management/controller.dart';
import 'package:flutter_getx_complete/04_dependence_management/view.dart';
import 'package:flutter_getx_complete/05_internationalization/translations_view.dart';
import 'package:flutter_getx_complete/06_themes/themes.dart';
import 'package:flutter_getx_complete/06_themes/themes_view.dart';
import 'package:flutter_getx_complete/07_getx_services/service_view.dart';
import 'package:flutter_getx_complete/07_getx_services/settings_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '03_getx_controller/view.dart';
import '04_dependence_management/detail_page.dart';
import '05_internationalization/messages.dart';
import '06_themes/themes_controller.dart';

//getx-it have reactive (.obs) and simple state management,
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() => SettingsService().init());
  print('services started...');
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //  themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      //use custom translations
      // translations: Messages(), //create message class extends translation
      //translations will be displayed in that locale
      //  locale: Locale('en', 'US'),
      translations: Messages(), // your translations
      //  locale: Locale('en', 'US'), // initial locale
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      //  smartManagement: SmartManagement.full,
      initialBinding: DetailsBinding(),
      //  all named routes must mentioned here
      initialRoute: '/', //no need home
      getPages: [
        GetPage(
            name: '/detail',
            page: () => DetailsPage(),
            binding: DetailsBinding()
            // binding: BindingsBuilder(
            //   () {
            //     //lazy create instance when needed
            //     //  Get.lazyPut<MyController>(() => MyController(), fenix: false);
            //     //fenix:true..not delete from memory when come back
            //     //next time we use it fastly-

            //     // Get.putAsync<AsyncTask>(() async {
            //     //   await Future.delayed(Duration(seconds: 3));
            //     //   return AsyncTask();
            //     // }, permanent: false);

            //     //create new instance every time, not like singleton
            //     Get.create<MyController>(() => MyController(), permanent: true);
            //     Get.create<MyController>(() => MyController(), permanent: true);
            //   },
            // ),
            ),
        GetPage(
          name: '/',
          page: () => DependenencyExample(),
        ),
        GetPage(
          name: "/next",
          page: () => NextScreen(),
        ),
        //   use parameter to pass the value
        GetPage(
          name: "/next/:id",
          page: () => NextScreen(),
        )
      ],
      //  middle ware
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          print("open ad");
        }
      },

      title: 'Flutter Getx',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      //home: ReactiveStateManagement(),
      // home: SimpleStateManagement(),
      //  home: GetxControllerExample(),
      //home: DependenencyExample(),
      // home: Example(),
      //  home: ThemeExample(),
      home: ServiceView(),
    );
  }
}
