import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings {
  static bool isDarkMode = true;
  static Future<bool?> getDark() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool('isDarkMode')!;
    return prefs.getBool('isDarkMode');
  }
  // static bool isDarkMode =
  //     (SchedulerBinding.instance.window.platformBrightness == Brightness.dark);


}
