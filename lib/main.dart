import 'package:demo_flutter_bloc/dependencies/app_dependencies.dart';
import 'package:demo_flutter_bloc/helpers/theme_helper.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  await AppDependencies.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) {
        return MaterialApp(
          navigatorKey: navigationKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeHelper.build(context, isLightMode: true),
          darkTheme: ThemeHelper.build(context, isLightMode: false),
          initialRoute: Routes.splash,
          onGenerateRoute: Routes.getRoute,
        );
      },
    );
  }
}
