part of 'services.dart';

class SharedPrefsServices {
  static const String _fcmToken = "fcm_token";
  static const String _tokenKey = "token"; // added token key variable
  static const String _vibrationEnabledKey = "vibration_enabled";
  static const String _coinsKey = "coins";
  static const String _coinConversionRateKey = "coin_conversion_rate";

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences? _prefs;

  static Future<bool> setString(String key, String value) async {
    if (_prefs == null) {
      await init();
    }
    return await _prefs!.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getString(key);
  }

  static Future<bool> setBool(String key, bool value) async {
    if (_prefs == null) {
      await init();
    }
    return await _prefs!.setBool(key, value);
  }

  static Future<bool> setDouble(String key, double value) async {
    if (_prefs == null) {
      await init();
    }
    return await _prefs!.setDouble(key, value);
  }

  static Future<double?> getDouble(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getDouble(key);
  }

  static Future<bool?> getBool(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.getBool(key);
  }

  static Future<bool> setToken(String token) async {
    if (_prefs == null) {
      await init();
    }
    log(token);
    UserData.accesstoken = token;
    return await _prefs!.setString(_tokenKey, token);
  }

  static Future<String?> getToken() async {
    if (_prefs == null) {
      await init();
    }
    final String? token = _prefs!.getString(_tokenKey);
    log('token $token');
    return token;
  }

  // new: delete token method
  static Future<bool> deleteToken() async {
    if (_prefs == null) {
      await init();
    }
    return await _prefs!.remove(_tokenKey);
  }

  static Future<void> saveFCMToken(String? fcmToken) async {
    final prefs = await SharedPreferences.getInstance();
    if (fcmToken != null) {
      await prefs.setString(_fcmToken, fcmToken);
    }
  }

  static Future<String?> getFCMToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_fcmToken);
  }

  static Future<bool> setVibrationEnabled(bool enabled) async {
    return setBool(_vibrationEnabledKey, enabled);
  }

  static Future<bool> getVibrationEnabled() async {
    final result = await getBool(_vibrationEnabledKey);
    return result ?? true;
  }

  // Coins helper
  static Future<bool> setCoins(double coins) async {
    return setDouble(_coinsKey, coins);
  }

  static Future<double> getCoins() async {
    final val = await getDouble(_coinsKey);
    return val ?? 0.0;
  }

  // Coin conversion rate helper
  static Future<bool> setCoinConversionRate(double rate) async {
    return setDouble(_coinConversionRateKey, rate);
  }

  static Future<double> getCoinConversionRate() async {
    final val = await getDouble(_coinConversionRateKey);
    return val ?? 0.0;
  }
}
