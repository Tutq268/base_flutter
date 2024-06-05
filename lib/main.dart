// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:base_flutter/app.dart';
import 'package:base_flutter/ui/config/app_config.dart';
import 'package:base_flutter/ui/config/app_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();
  runApp(const MyApp());
}
