// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:base_flutter/ui/screen/support/cubit/support_cubit.dart';
import 'package:base_flutter/ui/share/scaffold/base_page_state.dart';
import 'package:base_flutter/ui/share/scaffold/base_screen.dart';

@RoutePage()
class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends BasePageState<SupportPage, SupportCubit> {
  @override
  Widget buildPage(BuildContext context) {
    return BaseScreen(
      child: Container(),
    );
  }
}
