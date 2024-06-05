// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:base_flutter/data/api/exception_handler/exception_handler.dart';
import 'package:base_flutter/data/api/exception_handler/exception_message_mapper.dart';
import 'package:base_flutter/data/api/exceptions/app_exception.dart';
import 'package:base_flutter/data/api/exceptions/app_exception_wrapper.dart';
import 'package:base_flutter/foundation/mixin/log_mixin.dart';
import 'package:base_flutter/resource/dimens/app_dimen.dart';
import 'package:base_flutter/ui/app_cubit.dart';
import 'package:base_flutter/ui/cubit/base_cubit.dart';
import 'package:base_flutter/ui/cubit/common/common_cubit.dart';
import 'package:base_flutter/ui/cubit/common/common_state.dart';
import 'package:base_flutter/ui/navigation/app_navigator.dart';
import 'package:base_flutter/ui/resource/styles/app_colors.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseCubit>
    extends BasePageStageDelegate<T, B> with LogMixin {}

abstract class BasePageStageDelegate<T extends StatefulWidget,
    B extends BaseCubit> extends State<T> implements ExceptionHandlerListener {
  final AppNavigator navigator = GetIt.instance.get<AppNavigator>();
  final AppCubit appCubit = GetIt.instance.get<AppCubit>();
  late final ExceptionMessageMapper exceptionMessageMapper =
      const ExceptionMessageMapper();
  late final ExceptionHandler exceptionHandler = ExceptionHandler(
    navigator: navigator,
    listener: this,
  );
  late final CommonCubit commonBloc = GetIt.instance.get<CommonCubit>()
    ..navigator = navigator
    ..appCubit = appCubit
    ..exceptionHandler = exceptionHandler
    ..exceptionMessageMapper = exceptionMessageMapper;

  late final B cubit = GetIt.instance.get<B>()
    ..navigator = navigator
    ..appCubit = appCubit
    ..commonBloc = commonBloc
    ..exceptionHandler = exceptionHandler
    ..exceptionMessageMapper = exceptionMessageMapper;

  @override
  Widget build(BuildContext context) {
    AppDimen.of(context);
    AppColors.of(context);
    return Provider(
        create: (context) => navigator,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => cubit),
            BlocProvider(create: (_) => commonBloc),
          ],
          child: BlocListener<CommonCubit, CommonState>(
            listenWhen: (previous, current) =>
                previous.appExceptionWrapper != current.appExceptionWrapper &&
                current.appExceptionWrapper != null,
            listener: (context, state) {
              handleException(state.appExceptionWrapper!);
            },
            child: buildPageListeners(child: buildPage(context)),
          ),
        ));
  }

  void handleException(AppExceptionWrapper appExceptionWrapper) {
    exceptionHandler
        .handleException(
      appExceptionWrapper,
      handleExceptionMessage(appExceptionWrapper.appException),
    )
        .then((value) {
      appExceptionWrapper.exceptionCompleter?.complete();
    });
  }

  String handleExceptionMessage(AppException appException) {
    return exceptionMessageMapper.map(appException);
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPage(BuildContext context);
  @override
  void onRefreshTokenFailed() {
    // commonC/.add(ForceLogoutButtonPressed());
  }
}
