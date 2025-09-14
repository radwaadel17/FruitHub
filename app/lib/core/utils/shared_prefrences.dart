import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences instance;

  static Future<void> init() async {
    instance = await SharedPreferences.getInstance();
  }

  static Future<bool> setBool(String key, bool value) async {
    return instance.setBool(key, value);
  }

  static bool getBool(String key) {
    return instance.getBool(key) ?? false;
  }

  static Future<bool> clear() async {
    return await instance.clear();
  }
}
