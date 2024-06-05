// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/screen/points/cubit/points_state.dart';

const assetKey = 'assets/data/points/points_data.json';

@Injectable()
class PointsCubit extends BaseCubit<PointsState> {
  PointsCubit() : super(const PointsState());
  Future<void> initData() async {
    debugPrint("point page");
    try {} on DioException catch (_) {}
  }
}
