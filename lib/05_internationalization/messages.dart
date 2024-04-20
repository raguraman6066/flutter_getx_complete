import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'logged_in': 'Logged in as @name \n Email: @email'
        },
        'es_ES': {
          'hello': '¡Hola Mundo!',
          'logged_in': 'Conectado como @name \n Correo electrónico: @email'
        },
      };
}
//http://lingoes.net/en/translator/langcode.htm