import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/blocs/splash/splash_bloc.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/resources/colors.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage, SplashBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashBloc, NoDataState>(
        builder: (context, data) {
          return _buildView();
        },
      ),
    );
  }

  Widget _buildView() {
    return Stack(
      children: [
        _background(),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Expanded(
                child: _logo(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: _info(),
              ),
              _actions(),
            ],
          ),
        )
      ],
    );
  }

  Widget _background() {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        "assets/images/login_background.png",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right:20),
          child: Stack(
            children: [
              _LinearGradientMask(
                colors: [
                  Color(0xFFFF00D6),
                  Color(0xFFFF4D00),
                ],
                child: SvgPicture.asset(
                  "assets/images/logo_0.svg",
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                "assets/images/logo_1.svg",
              ),
            ],
          ),
        ),
        Text(
          "photo",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 48,
            fontFamily: FontConstants.comfortaa,
          ),
        )
      ],
    );
  }

  Widget _info() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Image.asset(
            "assets/images/avatar_default.png",
            height: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pawel Czerwinski",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
            ),
            Text(
              "@pawel_czerwinski",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _actions() {
    return Row(
      children: [
        Expanded(
          child: TextButtonWidget(
            text: "LOG IN",
            backgroundColor: MyColors.primaryBackground,
            textColor: MyColors.primary,
            onPress: () => bloc.goToLoginScreen(),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: TextButtonWidget(
            text: "REGISTER",
            onPress: () => bloc.goToRegisterScreen(),
          ),
        ),
      ],
    );
  }
}

class _LinearGradientMask extends StatelessWidget {
  _LinearGradientMask({
    required this.child,
    required this.colors,
  });
  final Widget child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.centerLeft,
          radius: 1,
          colors: colors,
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
