import 'package:demo_flutter_bloc/models/info_model.dart';

class SplashState {
  final InfoModel? info;

  SplashState({
    SplashState? state,
    InfoModel? info,
  })  : info = info ?? state?.info;
}
