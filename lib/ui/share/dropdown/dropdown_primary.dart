// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuple/tuple.dart';

// Project imports:
import 'package:base_flutter/foundation/utils/log_utils.dart';
import 'package:base_flutter/ui/resource/styles/app_text_styles.dart';

class DropdownPrimary<T> extends StatelessWidget {
  const DropdownPrimary({
    super.key,
    this.listTuple,
    this.listDynamic,
    required this.value,
    this.loanTimeCycle,
    this.required = true,
    this.onChange,
    this.onChangeCycle,
    this.style,
    this.title,
    this.hintText,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.searchMatchFn,
    this.searchController,
    this.canSearch = false,
  });
  final List<DropdownMenuItem<T>>? listDynamic;
  final List<Tuple2<String?, T>>? listTuple;
  final ValueChanged? onChange;
  final ValueChanged? onChangeCycle;
  final T value;
  final T? loanTimeCycle;
  final String? title;
  final bool? required;
  final TextStyle? style;
  final String? hintText;
  final FormFieldValidator? validator;
  final AutovalidateMode autovalidateMode;
  final bool Function(DropdownMenuItem<dynamic>, String)? searchMatchFn;
  final TextEditingController? searchController;
  final bool canSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField2<T>(
            dropdownStyleData: DropdownStyleData(
                maxHeight: MediaQuery.of(context).size.height / 2),
            autovalidateMode: autovalidateMode,
            isExpanded: true,
            hint: hintText != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Text(hintText ?? '',
                        style: AppTextStyles.s14w400Primary()),
                  )
                : null,
            buttonStyleData: const ButtonStyleData(height: 48),
            decoration: const InputDecoration().copyWith(
              errorMaxLines: 2,
              contentPadding: EdgeInsets.zero,
            ),
            dropdownSearchData: DropdownSearchData(
              searchController: searchController,
              searchMatchFn: searchMatchFn,
              searchInnerWidget: canSearch
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(6, 8, 8, 0).r,
                      child: TextFormField(
                        controller: searchController,
                        decoration: const InputDecoration().copyWith(
                          hintText: hintText,
                        ),
                      ),
                    )
                  : null,
              //searchInnerWidgetHeight: 56
            ),
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                searchController?.clear();
              }
            },
            items: listTuple != null
                ? [
                    ...listTuple!.map(
                      (e) => DropdownMenuItem<T>(
                        value: e.item2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0).w,
                          child: Text(
                            e.item1 ?? "",
                            style: AppTextStyles.s14w400Primary(),
                          ),
                        ),
                      ),
                    )
                  ]
                : listDynamic,
            value: value,
            validator: validator,
            onChanged: (value) {
              if (onChange != null) {
                onChange!(value);
                Log.d("value $value");
              }
            },
          )
        ],
      ),
    );
  }
}
