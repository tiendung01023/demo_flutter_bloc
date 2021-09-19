import 'package:demo_flutter_bloc/dependencies/app_dependencies.dart';
import 'package:demo_flutter_bloc/helpers/theme_helper.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:demo_flutter_bloc/utils/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
String localize(String key) =>
    AppLocalizations.of(navigationKey.currentContext!)!.text(key);
Future<void> main() async {
  await AppDependencies.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const List<Locale> _supportLocales = <Locale>[
    Locale('vi'),
    Locale('en'),
  ];
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
          supportedLocales: _supportLocales,
          localizationsDelegates: <LocalizationsDelegate<dynamic>>[
            AppLocalizationsDelegate(_supportLocales),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
