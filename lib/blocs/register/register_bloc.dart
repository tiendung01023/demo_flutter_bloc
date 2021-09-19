import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class RegisterBloc extends BaseBloc<NoDataState> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  RegisterBloc() : super(NoDataState());

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> onSubmit() async {
    print('[RegisterBloc - onSubmit] run');
    _goToPop();
  }

  void _goToPop() {
    print('[RegisterBloc - _goToPop] run');
    Navigator.pop(context);
  }
}
