import 'package:demo_flutter_bloc/blocs/home/home_bloc.dart';
import 'package:demo_flutter_bloc/blocs/login/login_bloc.dart';
import 'package:demo_flutter_bloc/blocs/register/register_bloc.dart';
import 'package:demo_flutter_bloc/blocs/splash/splash_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocDependencies {
  static Future<void> setup(GetIt injector) async {
    injector.registerFactory(() => SplashBloc());
    injector.registerFactory(() => LoginBloc());
    injector.registerFactory(() => RegisterBloc());
    injector.registerFactory(() => HomeBloc());
  }
}
