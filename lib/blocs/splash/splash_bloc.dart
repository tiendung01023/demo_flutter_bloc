import 'package:demo_flutter_bloc/blocs/splash/splash_state.dart';
import 'package:demo_flutter_bloc/models/info_model.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class SplashBloc extends BaseBloc<SplashState> {
  SplashBloc() : super(SplashState());

  @override
  void onStart(BuildContext context, Object? payload) {
    print('[SplashBloc - onStart] run');
    super.onStart(context, payload);
    _loadData();
  }

  Future<void> _loadData() async {
    print('[SplashBloc - _loadData] run');
    try {
      final info = InfoModel(
        avatar:
            "https://scontent.fsgn5-5.fna.fbcdn.net/v/t1.6435-9/225583484_114472127525729_7211727487964193649_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=2MjFVvzTG14AX8gqRqi&_nc_ht=scontent.fsgn5-5.fna&oh=27b0029ac10728521e7af1d4ff1179c0&oe=616CA5BD",
        username: "@tiendung01023",
        name: "Phạm Tiến Dũng",
      );
      final newState = SplashState(
        state: state,
        info: info,
      );
      emit(newState);
    } catch (e) {
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
