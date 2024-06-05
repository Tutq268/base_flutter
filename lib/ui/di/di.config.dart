// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Package imports:
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i27;

// Project imports:
import 'package:base_flutter/data/api/app_api_service.dart' as _i39;
import 'package:base_flutter/data/api/client/raw_api_client.dart' as _i25;
import 'package:base_flutter/data/api/refresh_token_api_service.dart' as _i36;
import 'package:base_flutter/data/preference/app_preferences.dart' as _i31;
import 'package:base_flutter/foundation/helper/app_info/app_info.dart' as _i3;
import 'package:base_flutter/ui/app_cubit.dart' as _i34;
import 'package:base_flutter/ui/cubit/common/common_cubit.dart' as _i9;
import 'package:base_flutter/ui/di/di.dart' as _i42;
import 'package:base_flutter/ui/navigation/app_navigator.dart' as _i29;
import 'package:base_flutter/ui/router/app_navigator_impl.dart' as _i30;
import 'package:base_flutter/ui/router/router.dart' as _i4;
import 'package:base_flutter/ui/screen/home/cubit/home_cubit.dart' as _i14;
import 'package:base_flutter/ui/screen/login/cubit/login_cubit.dart' as _i40;
import 'package:base_flutter/ui/screen/main/cubit/main_cubit.dart' as _i20;
import 'package:base_flutter/ui/screen/points/cubit/points_cubit.dart' as _i23;
import 'package:base_flutter/ui/screen/splash/cubit/splash_cubit.dart' as _i32;
import 'package:base_flutter/ui/share/toast/toast.dart' as _i15;

import 'package:base_flutter/data/api/client/auth_app_server_api_client.dart'
    as _i38;
import 'package:base_flutter/data/api/client/none_auth_app_server_api_client.dart'
    as _i22;
import 'package:base_flutter/data/api/client/random_user_api_client.dart'
    as _i24;
import 'package:base_flutter/data/api/client/refresh_token_api_client.dart'
    as _i35;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/firebase_storage_error_response_mapper.dart'
    as _i11;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/goong_error_response_mapper.dart'
    as _i12;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i16;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i17;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/line_error_response_mapper.dart'
    as _i19;
import 'package:base_flutter/data/api/middleware/access_token_interceptor.dart'
    as _i33;
import 'package:base_flutter/data/api/middleware/connectivity_interceptor.dart'
    as _i10;
import 'package:base_flutter/data/api/middleware/header_interceptor.dart'
    as _i13;
import 'package:base_flutter/data/api/middleware/refresh_token_interceptor.dart'
    as _i37;
import 'package:base_flutter/data/preference/language_code_data_mapper.dart'
    as _i18;
import 'package:base_flutter/ui/navigation/base/base_popup_info_mapper.dart'
    as _i5;
import 'package:base_flutter/ui/navigation/base/base_route_info_mapper.dart'
    as _i7;
import 'package:base_flutter/ui/navigation/mapper/app_popup_info_mapper.dart'
    as _i6;
import 'package:base_flutter/ui/navigation/mapper/app_route_info_mapper.dart'
    as _i8;
import 'package:base_flutter/ui/screen/my_package/cubit/my_package_cubit.dart'
    as _i21;
import 'package:base_flutter/ui/screen/service/cubit/service_cubit.dart'
    as _i26;
import 'package:base_flutter/ui/screen/support/cubit/support_cubit.dart'
    as _i28;
import 'package:base_flutter/ui/screen/verify_otp/cubit/verify_otp_cubit.dart'
    as _i41;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i3.AppInfo>(() => _i3.AppInfo());
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.lazySingleton<_i5.BasePopupInfoMapper>(() => _i6.AppPopupInfoMapper());
    gh.lazySingleton<_i7.BaseRouteInfoMapper>(() => _i8.AppRouteInfoMapper());
    gh.factory<_i9.CommonCubit>(() => _i9.CommonCubit());
    gh.factory<_i10.ConnectivityInterceptor>(
        () => _i10.ConnectivityInterceptor());
    gh.factory<_i11.FirebaseStorageErrorResponseMapper>(
        () => _i11.FirebaseStorageErrorResponseMapper());
    gh.factory<_i12.GoongErrorResponseMapper>(
        () => _i12.GoongErrorResponseMapper());
    gh.factory<_i13.HeaderInterceptor>(
        () => _i13.HeaderInterceptor(gh<_i3.AppInfo>()));
    gh.factory<_i14.HomeCubit>(() => _i14.HomeCubit());
    gh.lazySingleton<_i15.IToast>(() => _i15.CustomBotToast());
    gh.factory<_i16.JsonArrayErrorResponseMapper>(
        () => _i16.JsonArrayErrorResponseMapper());
    gh.factory<_i17.JsonObjectErrorResponseMapper>(
        () => _i17.JsonObjectErrorResponseMapper());
    gh.factory<_i18.LanguageCodeDataMapper>(
        () => _i18.LanguageCodeDataMapper());
    gh.factory<_i19.LineErrorResponseMapper>(
        () => _i19.LineErrorResponseMapper());
    gh.factory<_i20.MainCubit>(() => _i20.MainCubit());
    gh.factory<_i21.MyPackageCubit>(() => _i21.MyPackageCubit());
    gh.lazySingleton<_i22.NoneAuthAppServerApiClient>(
        () => _i22.NoneAuthAppServerApiClient(gh<_i13.HeaderInterceptor>()));
    gh.factory<_i23.PointsCubit>(() => _i23.PointsCubit());
    gh.lazySingleton<_i24.RandomUserApiClient>(
        () => _i24.RandomUserApiClient());
    gh.lazySingleton<_i25.RawApiClient>(() => _i25.RawApiClient());
    gh.factory<_i26.ServiceCubit>(() => _i26.ServiceCubit());
    await gh.factoryAsync<_i27.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.factory<_i28.SupportCubit>(() => _i28.SupportCubit());
    gh.lazySingleton<_i29.AppNavigator>(() => _i30.AppNavigatorImpl(
          gh<_i4.AppRouter>(),
          gh<_i5.BasePopupInfoMapper>(),
          gh<_i7.BaseRouteInfoMapper>(),
        ));
    gh.lazySingleton<_i31.AppPreferences>(
        () => _i31.AppPreferences(gh<_i27.SharedPreferences>()));
    gh.factory<_i32.SplashCubit>(
        () => _i32.SplashCubit(appPreference: gh<_i31.AppPreferences>()));
    gh.factory<_i33.AccessTokenInterceptor>(
        () => _i33.AccessTokenInterceptor(gh<_i31.AppPreferences>()));
    gh.lazySingleton<_i34.AppCubit>(() => _i34.AppCubit(
          appPreference: gh<_i31.AppPreferences>(),
          languageCodeDataMapper: gh<_i18.LanguageCodeDataMapper>(),
        ));
    gh.lazySingleton<_i35.RefreshTokenApiClient>(
        () => _i35.RefreshTokenApiClient(
              gh<_i13.HeaderInterceptor>(),
              gh<_i33.AccessTokenInterceptor>(),
            ));
    gh.lazySingleton<_i36.RefreshTokenApiService>(
        () => _i36.RefreshTokenApiService(gh<_i35.RefreshTokenApiClient>()));
    gh.factory<_i37.RefreshTokenInterceptor>(() => _i37.RefreshTokenInterceptor(
          gh<_i31.AppPreferences>(),
          gh<_i36.RefreshTokenApiService>(),
          gh<_i22.NoneAuthAppServerApiClient>(),
        ));
    gh.lazySingleton<_i38.AuthAppServerApiClient>(
        () => _i38.AuthAppServerApiClient(
              gh<_i13.HeaderInterceptor>(),
              gh<_i33.AccessTokenInterceptor>(),
              gh<_i37.RefreshTokenInterceptor>(),
            ));
    gh.lazySingleton<_i39.AppApiService>(() => _i39.AppApiService(
          gh<_i22.NoneAuthAppServerApiClient>(),
          gh<_i38.AuthAppServerApiClient>(),
          // gh<_i24.RandomUserApiClient>(),
        ));
    gh.factory<_i40.LoginCubit>(
        () => _i40.LoginCubit(apiServices: gh<_i39.AppApiService>()));
    gh.factory<_i41.VerifyOtpCubit>(() => _i41.VerifyOtpCubit(
          apiServices: gh<_i39.AppApiService>(),
          appPrefrence: gh<_i31.AppPreferences>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i42.ServiceModule {}
