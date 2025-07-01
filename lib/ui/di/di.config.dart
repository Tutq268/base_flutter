// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_flutter/data/api/app_api_service.dart' as _i643;
import 'package:base_flutter/data/api/client/auth_app_server_api_client.dart'
    as _i210;
import 'package:base_flutter/data/api/client/none_auth_app_server_api_client.dart'
    as _i485;
import 'package:base_flutter/data/api/client/random_user_api_client.dart'
    as _i182;
import 'package:base_flutter/data/api/client/raw_api_client.dart' as _i196;
import 'package:base_flutter/data/api/client/refresh_token_api_client.dart'
    as _i944;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/firebase_storage_error_response_mapper.dart'
    as _i788;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/goong_error_response_mapper.dart'
    as _i955;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i574;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i605;
import 'package:base_flutter/data/api/mapper/base/base_error_response_mapper/line_error_response_mapper.dart'
    as _i564;
import 'package:base_flutter/data/api/middleware/access_token_interceptor.dart'
    as _i820;
import 'package:base_flutter/data/api/middleware/connectivity_interceptor.dart'
    as _i723;
import 'package:base_flutter/data/api/middleware/header_interceptor.dart'
    as _i113;
import 'package:base_flutter/data/api/middleware/refresh_token_interceptor.dart'
    as _i459;
import 'package:base_flutter/data/api/refresh_token_api_service.dart' as _i787;
import 'package:base_flutter/data/preference/app_preferences.dart' as _i1014;
import 'package:base_flutter/data/preference/language_code_data_mapper.dart'
    as _i756;
import 'package:base_flutter/foundation/helper/app_info/app_info.dart' as _i972;
import 'package:base_flutter/ui/app_cubit.dart' as _i386;
import 'package:base_flutter/ui/cubit/common/common_cubit.dart' as _i101;
import 'package:base_flutter/ui/di/di.dart' as _i702;
import 'package:base_flutter/ui/navigation/app_navigator.dart' as _i270;
import 'package:base_flutter/ui/navigation/base/base_popup_info_mapper.dart'
    as _i320;
import 'package:base_flutter/ui/navigation/base/base_route_info_mapper.dart'
    as _i446;
import 'package:base_flutter/ui/navigation/mapper/app_popup_info_mapper.dart'
    as _i724;
import 'package:base_flutter/ui/navigation/mapper/app_route_info_mapper.dart'
    as _i528;
import 'package:base_flutter/ui/router/app_navigator_impl.dart' as _i283;
import 'package:base_flutter/ui/router/router.dart' as _i407;
import 'package:base_flutter/ui/screen/home/cubit/home_cubit.dart' as _i858;
import 'package:base_flutter/ui/screen/login/cubit/login_cubit.dart' as _i164;
import 'package:base_flutter/ui/screen/main/cubit/main_cubit.dart' as _i758;
import 'package:base_flutter/ui/screen/my_package/cubit/my_package_cubit.dart'
    as _i15;
import 'package:base_flutter/ui/screen/points/cubit/points_cubit.dart' as _i82;
import 'package:base_flutter/ui/screen/service/cubit/service_cubit.dart'
    as _i651;
import 'package:base_flutter/ui/screen/splash/cubit/splash_cubit.dart' as _i765;
import 'package:base_flutter/ui/screen/support/cubit/support_cubit.dart'
    as _i761;
import 'package:base_flutter/ui/screen/verify_otp/cubit/verify_otp_cubit.dart'
    as _i525;
import 'package:base_flutter/ui/share/toast/toast.dart' as _i72;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.factory<_i101.CommonCubit>(() => _i101.CommonCubit());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.factory<_i858.HomeCubit>(() => _i858.HomeCubit());
    gh.factory<_i761.SupportCubit>(() => _i761.SupportCubit());
    gh.factory<_i82.PointsCubit>(() => _i82.PointsCubit());
    gh.factory<_i15.MyPackageCubit>(() => _i15.MyPackageCubit());
    gh.factory<_i651.ServiceCubit>(() => _i651.ServiceCubit());
    gh.factory<_i758.MainCubit>(() => _i758.MainCubit());
    gh.factory<_i756.LanguageCodeDataMapper>(
        () => _i756.LanguageCodeDataMapper());
    gh.factory<_i723.ConnectivityInterceptor>(
        () => _i723.ConnectivityInterceptor());
    gh.factory<_i564.LineErrorResponseMapper>(
        () => _i564.LineErrorResponseMapper());
    gh.factory<_i574.JsonArrayErrorResponseMapper>(
        () => _i574.JsonArrayErrorResponseMapper());
    gh.factory<_i605.JsonObjectErrorResponseMapper>(
        () => _i605.JsonObjectErrorResponseMapper());
    gh.factory<_i955.GoongErrorResponseMapper>(
        () => _i955.GoongErrorResponseMapper());
    gh.factory<_i788.FirebaseStorageErrorResponseMapper>(
        () => _i788.FirebaseStorageErrorResponseMapper());
    gh.lazySingleton<_i407.AppRouter>(() => _i407.AppRouter());
    gh.lazySingleton<_i972.AppInfo>(() => _i972.AppInfo());
    gh.lazySingleton<_i196.RawApiClient>(() => _i196.RawApiClient());
    gh.lazySingleton<_i182.RandomUserApiClient>(
        () => _i182.RandomUserApiClient());
    gh.lazySingleton<_i72.IToast>(() => _i72.CustomBotToast());
    gh.lazySingleton<_i320.BasePopupInfoMapper>(
        () => _i724.AppPopupInfoMapper());
    gh.lazySingleton<_i1014.AppPreferences>(
        () => _i1014.AppPreferences(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i446.BaseRouteInfoMapper>(
        () => _i528.AppRouteInfoMapper());
    gh.factory<_i820.AccessTokenInterceptor>(
        () => _i820.AccessTokenInterceptor(gh<_i1014.AppPreferences>()));
    gh.factory<_i765.SplashCubit>(
        () => _i765.SplashCubit(appPreference: gh<_i1014.AppPreferences>()));
    gh.factory<_i113.HeaderInterceptor>(
        () => _i113.HeaderInterceptor(gh<_i972.AppInfo>()));
    gh.lazySingleton<_i270.AppNavigator>(() => _i283.AppNavigatorImpl(
          gh<_i407.AppRouter>(),
          gh<_i320.BasePopupInfoMapper>(),
          gh<_i446.BaseRouteInfoMapper>(),
        ));
    gh.lazySingleton<_i386.AppCubit>(() => _i386.AppCubit(
          appPreference: gh<_i1014.AppPreferences>(),
          languageCodeDataMapper: gh<_i756.LanguageCodeDataMapper>(),
        ));
    gh.lazySingleton<_i944.RefreshTokenApiClient>(
        () => _i944.RefreshTokenApiClient(
              gh<_i113.HeaderInterceptor>(),
              gh<_i820.AccessTokenInterceptor>(),
            ));
    gh.lazySingleton<_i787.RefreshTokenApiService>(
        () => _i787.RefreshTokenApiService(gh<_i944.RefreshTokenApiClient>()));
    gh.lazySingleton<_i485.NoneAuthAppServerApiClient>(
        () => _i485.NoneAuthAppServerApiClient(gh<_i113.HeaderInterceptor>()));
    gh.factory<_i459.RefreshTokenInterceptor>(
        () => _i459.RefreshTokenInterceptor(
              gh<_i1014.AppPreferences>(),
              gh<_i787.RefreshTokenApiService>(),
              gh<_i485.NoneAuthAppServerApiClient>(),
            ));
    gh.lazySingleton<_i210.AuthAppServerApiClient>(
        () => _i210.AuthAppServerApiClient(
              gh<_i113.HeaderInterceptor>(),
              gh<_i820.AccessTokenInterceptor>(),
              gh<_i459.RefreshTokenInterceptor>(),
            ));
    gh.lazySingleton<_i643.AppApiService>(() => _i643.AppApiService(
          gh<_i485.NoneAuthAppServerApiClient>(),
          gh<_i210.AuthAppServerApiClient>(),
          gh<_i182.RandomUserApiClient>(),
        ));
    gh.factory<_i525.VerifyOtpCubit>(() => _i525.VerifyOtpCubit(
          apiServices: gh<_i643.AppApiService>(),
          appPrefrence: gh<_i1014.AppPreferences>(),
        ));
    gh.factory<_i164.LoginCubit>(
        () => _i164.LoginCubit(apiServices: gh<_i643.AppApiService>()));
    return this;
  }
}

class _$ServiceModule extends _i702.ServiceModule {}
