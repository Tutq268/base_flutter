import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/screen/home/cubit/home_state.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit() : super(const HomeState());
  Future<void> initData() async {
    try {} on DioException catch (_) {}
  }
}
