import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_flutter_bloc/blocs/dashboard/dashboard_bloc.dart';
import 'package:demo_flutter_bloc/blocs/dashboard/dashboard_state.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/helpers/cached_network_image_helper.dart';
import 'package:demo_flutter_bloc/models/info_model.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/widgets/info_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends BaseState<DashboardPage, DashboardBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (_, DashboardState state) {
        return _buildView(state);
      },
    );
  }

  Widget _buildView(DashboardState state) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.responsive()),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w400,
        fontSize: 36.responsive(),
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
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 13.responsive(),
            ),
          ),
          const SizedBox(height: 24),
          child,
        ],
      ),
    );
  }

  Widget _newTodayWidget(DashboardState state) {
    final String? imageUrl = state.newToday?.imageUrl;
    final double pixRatio = MediaQuery.of(context).devicePixelRatio;
    return LayoutBuilder(builder: (_, BoxConstraints constraints) {
      final double width = constraints.maxWidth;
      return Column(
        children: <Widget>[
          if (imageUrl == null)
            SizedBox(
              width: width,
              height: width,
              child: CachedNetworkImageHelper.error(),
            )
          else
            CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              width: width,
              height: width,
              memCacheHeight: (width * pixRatio).round(),
              placeholder: (_, __) => CachedNetworkImageHelper.placeholder(),
              errorWidget: (_, __, dynamic ___) =>
                  CachedNetworkImageHelper.error(),
            ),
          const SizedBox(height: 16),
          _info(state),
        ],
      );
    });
  }

  Widget _info(DashboardState state) {
    final InfoModel? info = state.newToday?.info;
    return InfoWidget(
      imageUrl: info?.avatar,
      name: info?.name,
      username: info?.username,
    );
  }

  Widget _browseAllWidget(DashboardState state) {
    final List<String> listImage = state.listImage;
    return StaggeredGridView.countBuilder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      itemCount: listImage.length,
      itemBuilder: (BuildContext context, int index) {
        final String imageUrl = listImage.elementAt(index);
        return CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fitWidth,
          placeholder: (_, __) => CachedNetworkImageHelper.placeholder(),
          errorWidget: (_, __, dynamic ___) => CachedNetworkImageHelper.error(),
        );
      },
      staggeredTileBuilder: (int index) {
        return const StaggeredTile.fit(2);
      },
      mainAxisSpacing: 9,
      crossAxisSpacing: 9,
    );
  }

  Widget _btnSeeMoreWidget() {
    return TextButtonWidget(
      text: "SEE MORE",
      textColor: Theme.of(context).primaryColor,
      backgroundColor: Theme.of(context).backgroundColor,
      onPress: bloc.onSeeMore,
    );
  }

  Widget _bottomNav() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 9.responsive(),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
              offset: const Offset(0, -0.5),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/bottom_nav_home.svg",
              height: 16.responsive(),
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
            SvgPicture.asset(
              "assets/images/bottom_nav_search.svg",
              height: 16.responsive(),
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
            Container(
              height: 40.responsive(),
              width: 70.responsive(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.responsive()),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFFFF00D6),
                    Color(0xFFFF4D00),
                  ],
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/images/bottom_nav_add.svg",
                  height: 16.responsive(),
                  color: Theme.of(context).backgroundColor,
                ),
              ),
            ),
            SvgPicture.asset(
              "assets/images/bottom_nav_message.svg",
              height: 16.responsive(),
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
            SvgPicture.asset(
              "assets/images/bottom_nav_person.svg",
              height: 16.responsive(),
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
          ],
        ),
      ),
    );
  }
}
