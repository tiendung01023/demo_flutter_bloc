import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class LoginBloc extends BaseBloc<NoDataState> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginBloc() : super(NoDataState());

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> onSubmit() async {
    print('[LoginBloc - onSubmit] run');
    _goToHomeScreen();
  }

  Future<void> _goToHomeScreen() async {
    print('[LoginBloc - goToLoginScreen] run');
    await Navigator.pushNamed(
      context,
      Routes.home,
    );
  }
}
