

import 'package:shared_preferences/shared_preferences.dart';

class MusciiSharedPreferences {

  static final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  static String refreshTokenKey = "refreshToken";
  static Future<void> setRefreshToken(String token) => prefs.then((store) => store.setString(refreshTokenKey, token));
  static Future<String?> get refreshToken => prefs.then((store) => store.getString(refreshTokenKey));
}