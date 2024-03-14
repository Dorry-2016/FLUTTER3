import 'package:shared_preferences/shared_preferences.dart';

class Pref {
  Future<String> getvalue(key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key) ?? 'admin';
  }

  Future<void> setValue(key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }
}
