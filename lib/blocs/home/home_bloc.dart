import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class HomeBloc extends BaseBloc<NoDataState> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  HomeBloc() : super(NoDataState());

  @override
  void onStart(BuildContext context, Object? payload) {
    print('[HomeBloc - onStart] run');
    super.onStart(context, payload);
    _loadData();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _loadData() async {
    print('[HomeBloc - _loadData] run');
    try {} catch (e) {
      print('[HomeBloc - loadData] $e');
    }
  }

  Future<void> onSeeMore() async {
    print('[HomeBloc - onSeeMore] run');
  }

  Future<void> _goToHomeScreen() async {
    print('[HomeBloc - goToHomeScreen] run');
    await Navigator.pushNamed(
      context,
      Routes.login,
    );
  }
}
