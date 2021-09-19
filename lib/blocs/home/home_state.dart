import 'package:demo_flutter_bloc/models/new_today_model.dart';

class HomeState {
  final List<String> listImage;
  final NewTodayModel? newToday;

  HomeState({
    HomeState? state,
    List<String>? listImage,
    NewTodayModel? newToday,
  })  : listImage = listImage ?? state?.listImage ?? [],
        newToday = newToday ?? state?.newToday;
}
