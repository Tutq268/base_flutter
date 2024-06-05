// Project imports:
import 'package:base_flutter/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:base_flutter/data/api/model/base/results_response.dart';
import 'package:base_flutter/data/model/typedef.dart';

class ResultsJsonArrayResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, ResultsListResponse<T>> {
  @override
  // ignore: avoid-dynamic
  ResultsListResponse<T>? mapToDataModel({
    required dynamic response,
    Decoder<T>? decoder,
  }) {
    return decoder != null && response is Map<String, dynamic>
        ? ResultsListResponse.fromJson(response, (json) => decoder(json))
        : null;
  }
}
