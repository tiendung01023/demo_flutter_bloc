import 'package:demo_flutter_bloc/pages/home/home_page.dart';
import 'package:demo_flutter_bloc/pages/login/login_page.dart';
import 'package:demo_flutter_bloc/pages/register/register_page.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:demo_flutter_bloc/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<Widget>(() => const SplashPage(), instanceName: Routes.splash);
    injector.registerFactory<Widget>(() => const LoginPage(), instanceName: Routes.login);
    injector.registerFactory<Widget>(() => const RegisterPage(), instanceName: Routes.register);
    injector.registerFactory<Widget>(() => const HomePage(), instanceName: Routes.home);
  }
}
