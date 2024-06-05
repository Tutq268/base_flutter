// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/screen/service/cubit/service_state.dart';

@Injectable()
class ServiceCubit extends BaseCubit<ServiceState> {
  ServiceCubit() : super(const ServiceState());
  Future<void> initData() async {
    try {} on DioException catch (_) {}
  }
}
