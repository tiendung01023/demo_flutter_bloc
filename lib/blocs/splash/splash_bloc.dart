import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class SplashBloc extends BaseBloc<NoDataState> {
  SplashBloc() : super(NoDataState());

  @override
  void onStart(BuildContext context, Object? payload) {
    print('[SplashBloc - onStart] run');
    super.onStart(context, payload);
    _loadData();
  }

  Future<void> _loadData() async {
    print('[SplashBloc - _loadData] run');
    try {} catch (e) {
      print('[SplashBloc - loadData] $e');
    }
  }

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
