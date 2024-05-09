import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {

  var isDark = false;

  void changeTheme(state){
    if(state == true){
      isDark = true;
      Get.changeTheme(ThemeData.dark());

    }else{
      isDark = false;
      Get.changeTheme(ThemeData.light());
    }
  }
  // var isDarkMode = false.obs;
  //
  // void toggleTheme() {
  //   isDarkMode.value = !isDarkMode.value;
  //   // Save the current theme preference to persistent storage if needed
  // }
  //
  // ThemeData get theme => isDarkMode.value ? ThemeData.dark() : ThemeData.light();
}
