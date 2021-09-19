import 'package:demo_flutter_bloc/blocs/splash/splash_bloc.dart';
import 'package:demo_flutter_bloc/blocs/splash/splash_state.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/main.dart';
import 'package:demo_flutter_bloc/models/info_model.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/widgets/info_widget.dart';
import 'package:demo_flutter_bloc/widgets/linear_gradient_mark_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage, SplashBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (_, SplashState state) {
        return _buildView(state);
      },
    );
  }

  Widget _buildView(SplashState state) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: _logo(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: _info(state),
                  ),
                  _actions(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _background() {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        ImageConstants.loginBackground,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Stack(
            children: <Widget>[
              LinearGradientMaskWidget(
                colors: const <Color>[
                  Color(0xFFFF00D6),
                  Color(0xFFFF4D00),
                ],
                child: SvgPicture.asset(
                  ImageConstants.logo0,
                  color: Colors.white,
                  height: 38.responsive(),
                ),
              ),
              SvgPicture.asset(
                ImageConstants.logo1,
                height: 38.responsive(),
              ),
            ],
          ),
        ),
        Text(
          localize('splash.title'),
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 48.responsive(),
            fontFamily: FontConstants.comfortaa,
          ),
        )
      ],
    );
  }

  Widget _info(SplashState state) {
    final InfoModel? info = state.info;
    return InfoWidget(
      imageUrl: info?.avatar,
      name: info?.name,
      username: info?.username,
    );
  }

  Widget _actions() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextButtonWidget(
            text: localize('splash.btn_login').toUpperCase(),
            backgroundColor: Theme.of(context).backgroundColor,
            textColor: Theme.of(context).primaryColor,
            onPress: () => bloc.goToLoginScreen(),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: TextButtonWidget(
            text: localize('splash.btn_register').toUpperCase(),
            onPress: () => bloc.goToRegisterScreen(),
          ),
        ),
      ],
    );
  }
}
