// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/preference/app_preferences.dart';
import 'package:base_flutter/data/preference/language_code_data_mapper.dart';
import 'package:base_flutter/ui/app_state.dart';
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/enum/language_code/language_code_enum.dart';
import 'package:base_flutter/ui/resource/styles/app_themes.dart';

@LazySingleton()
class AppCubit extends BaseCubit<AppState> {
  AppCubit({required this.appPreference, required this.languageCodeDataMapper})
      : super(const AppState());

  AppPreferences appPreference;
  final LanguageCodeDataMapper languageCodeDataMapper;

  Future<void> initData() async {
    try {
      final isDarkMode = appPreference.isDarkMode;
      final languagueCode = appPreference.languageCode;
      _updateThemeSetting(isDarkMode);
      emit(state.copyWith(
          isDarkMode: isDarkMode,
          languageCode: languageCodeDataMapper.mapToEntity(languagueCode)));
    } on DioException catch (_) {}
  }

  Future<void> appThemeChange({required bool isDarkMode}) async {
    await runBlocCatching(
      action: () async {
        // await _saveIsDarkModeUseCase
        //     .execute(SaveIsDarkModeInput(isDarkMode: event.isDarkTheme));
        await appPreference.saveIsDarkMode(isDarkMode);
        emit(state.copyWith(isDarkMode: isDarkMode));
        _updateThemeSetting(isDarkMode);
      },
    );
  }

  Future<void> appLanguageChange({required LanguageCode language}) async {
    await runBlocCatching(
      action: () async {
        // await _saveIsDarkModeUseCase
        //     .execute(SaveIsDarkModeInput(isDarkMode: event.isDarkTheme));
        // _updateThemeSetting(event.isDarkTheme);
        await appPreference.saveLanguageCode(language.serverValue);
        emit(state.copyWith(languageCode: language));
      },
    );
  }

  void _updateThemeSetting(bool isDarkTheme) {
    AppThemeSetting.currentAppThemeType =
        isDarkTheme ? AppThemeType.dark : AppThemeType.light;
  }

  Future<void> handleLogout() async {
    await runBlocCatching(
      action: () async {
        appPreference.saveAccessToken("");
      },
    );
  }
}
