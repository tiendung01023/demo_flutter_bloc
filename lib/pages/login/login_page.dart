import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/blocs/login/login_bloc.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/resources/colors.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage, LoginBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<LoginBloc, NoDataState>(
      builder: (context, data) {
        return _buildView();
      },
    );
  }

  Widget _buildView() {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: MyColors.primaryBackground,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _customAppbarWidget(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        _titleWidget(),
                        const SizedBox(height: 33),
                        _formWidget(),
                        const SizedBox(height: 15),
                        _btnSubmitWidget(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _customAppbarWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            "assets/images/back_button.svg",
            height: 11,
          ),
        ),
      ),
    );
  }

  Widget _titleWidget() {
    return Text(
      "Log in",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        fontFamily: FontConstants.comfortaa,
      ),
    );
  }

  Widget _formWidget() {
    return Column(
      children: [
        TextFieldWidget(
          controller: bloc.usernameController,
          hintText: "Username",
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          controller: bloc.passwordController,
          obscureText: true,
          hintText: "Password",
        ),
      ],
    );
  }

  Widget _btnSubmitWidget() {
    return TextButtonWidget(
      text: "LOG IN",
      onPress: bloc.onSubmit,
    );
  }
}
