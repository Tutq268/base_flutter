// ignore_for_file: avoid_function_literals_in_foreach_calls

// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/screen/my_package/cubit/my_package_state.dart';

@Injectable()
class MyPackageCubit extends BaseCubit<MyPackageState> {
  MyPackageCubit() : super(const MyPackageState());

  Future<void> initData() async {
    debugPrint("my package cubit");
    try {} on DioException catch (_) {}
  }
}
