import 'package:demo_flutter_bloc/models/new_today_model.dart';

class DashboardState {
  final List<String> listImage;
  final NewTodayModel? newToday;

  DashboardState({
    DashboardState? state,
    List<String>? listImage,
    NewTodayModel? newToday,
  })  : listImage = listImage ?? state?.listImage ?? <String>[],
        newToday = newToday ?? state?.newToday;
}
