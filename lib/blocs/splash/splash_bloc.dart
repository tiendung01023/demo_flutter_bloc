import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class SplashBloc extends BaseBloc<NoDataState> {
  SplashBloc() : super(NoDataState());

  Future<void> goToLoginScreen() async {
    print('[SplashBloc - goToLoginScreen] run');
    await Navigator.pushNamed(
      context,
      Routes.login,
    );
  }

  Future<void> goToRegisterScreen() async {
    print('[SplashBloc - goToRegisterScreen] run');
    await Navigator.pushNamed(
      context,
      Routes.register,
    );
  }
}
