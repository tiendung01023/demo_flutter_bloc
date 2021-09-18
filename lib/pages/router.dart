import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

mixin Routes {
  // Auth
  static String get splash => 'splash';
  static String get login => 'login';
  static String get register => 'register';
  static String get home => 'home';

  static PageRoute getRoute(RouteSettings settings) {
    Widget widget;
    try {
      widget = GetIt.I.get<Widget>(instanceName: settings.name);
    } catch (e) {
      print('[PageRoute][getRoute][Page: ${settings.name}] $e');
      widget = Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            'Page [${settings.name}] not found',
          ),
        ),
      );
    }
    return MaterialPageRoute(builder: (_) => widget, settings: settings);
  }
}
