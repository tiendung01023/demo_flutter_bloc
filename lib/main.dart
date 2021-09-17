import 'package:demo_flutter_bloc/dependencies/app_dependencies.dart';
import 'package:demo_flutter_bloc/helpers/theme_helper.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/material.dart';

final navigationKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  await AppDependencies.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.build(context, isDarkMode: false),
      darkTheme: ThemeHelper.build(context, isDarkMode: true),
      initialRoute: Routes.splash,
      onGenerateRoute: (settings) => Routes.getRoute(settings),
    );
  }
}