import 'package:demo_flutter_bloc/blocs/home/home_state.dart';
import 'package:demo_flutter_bloc/models/info_model.dart';
import 'package:demo_flutter_bloc/models/new_today_model.dart';
import 'package:demo_flutter_bloc/pages/router.dart';
import 'package:flutter/widgets.dart';

import '../base/base_bloc.dart';

class HomeBloc extends BaseBloc<HomeState> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  HomeBloc() : super(HomeState());

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
    try {
      await Future.wait([
        _loadNewToday(),
        loadList(),
      ]);
    } catch (e) {
      print('[HomeBloc - loadData] $e');
    }
  }

  Future<void> _loadNewToday() async {
    print('[HomeBloc - _loadNewToday] run');
    final imageUrl = "https://dulichviet247.com/wp-content/uploads/2017/11/anhr-cafe-sapa.jpg";
    final model = NewTodayModel(
      imageUrl: imageUrl,
      info: InfoModel(
        avatar: "https://scontent.fsgn5-5.fna.fbcdn.net/v/t1.6435-9/225583484_114472127525729_7211727487964193649_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=2MjFVvzTG14AX8gqRqi&_nc_ht=scontent.fsgn5-5.fna&oh=27b0029ac10728521e7af1d4ff1179c0&oe=616CA5BD",
        username: "@tiendung01023",
        name: "Phạm Tiến Dũng"
      ),
    );
    final newState = HomeState(
      state: state,
      newToday: model,
    );
    emit(newState);
  }

  Future<void> loadList({int? skipCount}) async {
    print('[HomeBloc - loadList] run');
    try {
      final newList = [
        "https://img.nhandan.com.vn/Files/Images/2020/07/26/nhat_cay-1595747664059.jpg",
        "https://cellphones.com.vn/sforum/wp-content/uploads/2018/11/3-8.png",
        "https://icdn.dantri.com.vn/thumb_w/640/2017/1-1510967806416.jpg",
        "https://vcdn1-dulich.vnecdn.net/2021/07/16/1-1626437591.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BWzFqMmUWVFC1OfpPSUqMA",
        "https://dotobjyajpegd.cloudfront.net/photo/5d3a66f962710e25dc99ffa3_m",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvliPxKxXKCENDvno4aj6TLfoavUh4-LMFNg&usqp=CAU",
        "https://ktmt.vnmediacdn.com/stores/news_dataimages/nguyenthiluan/082020/02/17/in_article/5013_1.jpg",
        "https://i.pinimg.com/564x/35/09/33/3509331600a792d6918a366390e07a81.jpg",
      ];
      final oldList = state.listImage;
      if (skipCount == null || skipCount == 0) {
        oldList.clear();
      }
      oldList.addAll(newList);
      final newState = HomeState(
        state: state,
        listImage: oldList,
      );
      emit(newState);
    } catch (e) {
      print('[HomeBloc - loadList] $e');
    }
  }

  Future<void> onSeeMore() async {
    print('[HomeBloc - onSeeMore] run');
    loadList(skipCount: state.listImage.length);
  }

  Future<void> _goToHomeScreen() async {
    print('[HomeBloc - goToHomeScreen] run');
    await Navigator.pushNamed(
      context,
      Routes.login,
    );
  }
}
