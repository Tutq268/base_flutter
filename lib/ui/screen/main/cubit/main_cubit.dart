// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/screen/main/cubit/main_state.dart';

@Injectable()
class MainCubit extends BaseCubit<MainState> {
  MainCubit() : super(const MainState());
  Future<void> initData() async {
    try {} on DioException catch (_) {}
  }
}
