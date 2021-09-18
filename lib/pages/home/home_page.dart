import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/blocs/home/home_bloc.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/helpers/cached_network_image_helper.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/resources/colors.dart';
import 'package:demo_flutter_bloc/widgets/info_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<HomeBloc, NoDataState>(
      builder: (context, data) {
        return _buildView();
      },
    );
  }

  Widget _buildView() {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                    child: _newTodayWidget(),
                  ),
                  _groupWidget(
                    title: "Browse all",
                    child: _browseAllWidget(),
                  ),
                  const SizedBox(height: 15),
                  _btnSeeMoreWidget(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
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

  Widget _newTodayWidget() {
    final imageUrl =
        "https://dulichviet247.com/wp-content/uploads/2017/11/anhr-cafe-sapa.jpg";
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          width: 343,
          height: 343,
          placeholder: (_, __) => CachedNetworkImageHelper.placeholder(),
          errorWidget: (_, __, ___) => CachedNetworkImageHelper.error(),
        ),
        const SizedBox(height: 16),
        _info(),
      ],
    );
  }

  Widget _info() {
    final avatarUrl =
        "https://media-exp1.licdn.com/dms/image/C4E03AQFvWEwjLCJLCQ/profile-displayphoto-shrink_800_800/0/1628220510849?e=1637193600&v=beta&t=E39LUUC9BeffM-h2V_Tc-9szQ9sJrMeVQLYOxKA1NMs";
    return InfoWidget(
      imageUrl: avatarUrl,
      name: "Phạm Tiến Dũng",
      username: "@tiendung01023",
    );
  }

  Widget _browseAllWidget() {
    return StaggeredGridView.countBuilder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        final imageUrl =
            "https://dulichviet247.com/wp-content/uploads/2017/11/anhr-cafe-sapa.jpg";
        return CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          width: 343,
          height: 343,
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
}
