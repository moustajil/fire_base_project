import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const String _keyName = 'name';

  // Save name
  static Future<void> saveName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyName, name);
  }

  // Get name
  static Future<String?> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyName);
  }

  // Clear name
  static Future<void> clearName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyName);
  }
}
