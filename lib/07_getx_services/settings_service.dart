import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService extends GetxController {
  late SharedPreferences _pref;
  final counter = 0.obs;

  Future<SettingsService> init() async {
    print('$runtimeType initialize shared preference');
    _pref = await SharedPreferences.getInstance();
    print('$runtimeType initialize shared preference');
    counter.value = (_pref.getInt('counter') ?? 0);
    return this;
  }

  Future<void> incrementCounter() async {
    // counter.value = _pref.getInt('counter')! + 1;
    counter.value++; // Increment counter value
    await _pref.setInt('counter', counter.value);
  }
}
