import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_flutter_bloc/blocs/home/home_bloc.dart';
import 'package:demo_flutter_bloc/blocs/home/home_state.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/helpers/cached_network_image_helper.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/resources/colors.dart';
import 'package:demo_flutter_bloc/widgets/info_widget.dart';
import 'package:demo_flutter_bloc/widgets/linear_gradient_mark_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return _buildView(state);
      },
    );
  }

  Widget _buildView(HomeState state) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: MyColors.primaryBackground,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 44),
                  _titleWidget(),
                  _groupWidget(
                    title: "What’s new today",
                    child: _newTodayWidget(state),
                  ),
                  _groupWidget(
                    title: "Browse all",
                    child: _browseAllWidget(state),
                  ),
                  const SizedBox(height: 15),
                  _btnSeeMoreWidget(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _bottomNav(),
      ),
    );
  }

  Widget _titleWidget() {
    return Text(
      "Discover",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        fontFamily: FontConstants.comfortaa,
      ),
    );
  }

  Widget _groupWidget({
    required String title,
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 24),
          child,
        ],
      ),
    );
  }

  Widget _newTodayWidget(HomeState state) {
    final imageUrl = state.newToday?.imageUrl;
    return Column(
      children: [
        imageUrl == null
            ? SizedBox(
                width: 343,
                height: 343,
                child: CachedNetworkImageHelper.error(),
              )
            : CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                width: 343,
                height: 343,
                placeholder: (_, __) => CachedNetworkImageHelper.placeholder(),
                errorWidget: (_, __, ___) => CachedNetworkImageHelper.error(),
              ),
        const SizedBox(height: 16),
        _info(state),
      ],
    );
  }

  Widget _info(HomeState state) {
    final info = state.newToday?.info;
    return InfoWidget(
      imageUrl: info?.avatar,
      name: info?.name,
      username: info?.username,
    );
  }

  Widget _browseAllWidget(HomeState state) {
    final listImage = state.listImage;
    return StaggeredGridView.countBuilder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      itemCount: listImage.length,
      itemBuilder: (BuildContext context, int index) {
        final imageUrl = listImage.elementAt(index);
        return CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (_, __) => CachedNetworkImageHelper.placeholder(),
          errorWidget: (_, __, ___) => CachedNetworkImageHelper.error(),
        );
      },
      staggeredTileBuilder: (int index) {
        return StaggeredTile.fit(2);
      },
      mainAxisSpacing: 9,
      crossAxisSpacing: 9,
    );
  }

  Widget _btnSeeMoreWidget() {
    return TextButtonWidget(
      text: "SEE MORE",
      textColor: MyColors.primary,
      backgroundColor: MyColors.primaryBackground,
      onPress: bloc.onSeeMore,
    );
  }

  Widget _bottomNav() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        color: MyColors.primaryBackground,
        boxShadow: [
          BoxShadow(
            color: MyColors.primary.withOpacity(0.3),
            offset: Offset(0, -0.5),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            "assets/images/bottom_nav_home.svg",
            height: 16,
            color: MyColors.primary.withOpacity(0.8),
          ),
          SvgPicture.asset(
            "assets/images/bottom_nav_search.svg",
            height: 16,
            color: MyColors.primary.withOpacity(0.8),
          ),
          Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF00D6),
                  Color(0xFFFF4D00),
                ],
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/images/bottom_nav_add.svg",
                height: 16,
                color: MyColors.primaryBackground,
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/images/bottom_nav_message.svg",
            height: 16,
            color: MyColors.primary.withOpacity(0.8),
          ),
          SvgPicture.asset(
            "assets/images/bottom_nav_person.svg",
            height: 16,
            color: MyColors.primary.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
