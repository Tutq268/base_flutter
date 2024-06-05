// Flutter imports:
import 'package:flutter/cupertino.dart';

extension TextEditingValueExt on TextEditingValue {
  static TextEditingValue fromText(String text) {
    return TextEditingValue(
        text: text,
        selection: TextSelection.fromPosition(
          TextPosition(offset: text.length),
        ));
  }
}
