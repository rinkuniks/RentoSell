import 'package:shared_preferences/shared_preferences.dart';

class CommonComponents{
  // Save Data
  static void savePrefValues(String key, bool value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
}