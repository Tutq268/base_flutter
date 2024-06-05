// Package imports:
import 'package:dartx/dartx.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:base_flutter/data/api/mapper/base/base_data_mapper.dart';
import 'package:base_flutter/ui/enum/language_code/language_code_enum.dart';

@Injectable()
class LanguageCodeDataMapper extends BaseDataMapper<String, LanguageCode>
    with DataMapperMixin {
  @override
  LanguageCode mapToEntity(String? data) {
    return LanguageCode.values
            .firstOrNullWhere((element) => element.serverValue == data) ??
        LanguageCode.defaultValue;
  }

  @override
  String mapToData(LanguageCode entity) {
    return entity.serverValue;
  }
}
