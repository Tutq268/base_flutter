// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:base_flutter/data/model/account/account_model.dart';
import 'package:base_flutter/foundation/constant/share_preference_connstant.dart';
import 'package:base_flutter/foundation/mixin/log_mixin.dart';

@LazySingleton()
class AppPreferences with LogMixin {
  AppPreferences(this._sharedPreference)
      : _encryptedSharedPreferences =
            EncryptedSharedPreferences(prefs: _sharedPreference);

  final SharedPreferences _sharedPreference;
  final EncryptedSharedPreferences _encryptedSharedPreferences;

  bool get isDarkMode {
    return _sharedPreference.getBool(SharedPreferenceKeys.isDarkMode) ?? false;
  }

  String get deviceToken {
    return _sharedPreference.getString(SharedPreferenceKeys.deviceToken) ?? '';
  }

  String get languageCode =>
      _sharedPreference.getString(SharedPreferenceKeys.languageCode) ?? '';

  bool get isFirstLogin =>
      _sharedPreference.getBool(SharedPreferenceKeys.isFirstLogin) ?? true;

  bool get isFirstLaunchApp =>
      _sharedPreference.getBool(SharedPreferenceKeys.isFirstLaunchApp) ?? true;

  Future<String> get accessToken {
    return _encryptedSharedPreferences
        .getString(SharedPreferenceKeys.accessToken);
  }

  Future<String> get refreshToken {
    return _encryptedSharedPreferences
        .getString(SharedPreferenceKeys.refreshToken);
  }

  AccountModel? get currentUser {
    final user = _sharedPreference.getString(SharedPreferenceKeys.currentUser);
    if (user == null) {
      return null;
    }

    return AccountModel.fromJson(json.decode(user));
  }

  Future<bool> saveCurrentUser(AccountModel preferenceUserData) {
    return _sharedPreference.setString(
      SharedPreferenceKeys.currentUser,
      json.encode(preferenceUserData),
    );
  }

  bool get isLoggedIn {
    final token =
        _sharedPreference.getString(SharedPreferenceKeys.accessToken) ?? '';

    return token.isNotEmpty;
  }

  bool get isLoginWithFaceId {
    final status =
        _sharedPreference.getBool(SharedPreferenceKeys.isLoginWithFaceId) ??
            false;
    return status;
  }

  Future<bool> saveIsLoginWithFaceId(bool status) {
    return _sharedPreference.setBool(
      SharedPreferenceKeys.isLoginWithFaceId,
      status,
    );
  }

  Future<void> saveAccessToken(String token) async {
    await _encryptedSharedPreferences.setString(
      SharedPreferenceKeys.accessToken,
      token,
    );
  }

  Future<bool> saveLanguageCode(String languageCode) {
    return _sharedPreference.setString(
        SharedPreferenceKeys.languageCode, languageCode);
  }

  Future<bool> saveIsDarkMode(bool isDarkMode) {
    return _sharedPreference.setBool(
        SharedPreferenceKeys.isDarkMode, isDarkMode);
  }

  Future<void> clearCurrentUserData() async {
    await Future.wait(
      [
        _sharedPreference.remove(SharedPreferenceKeys.currentUser),
        _sharedPreference.remove(SharedPreferenceKeys.accessToken),
        _sharedPreference.remove(SharedPreferenceKeys.refreshToken),
        _sharedPreference.remove(SharedPreferenceKeys.isLoginWithFaceId),
      ],
    );
  }
}
