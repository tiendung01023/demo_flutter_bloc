import 'package:demo_flutter_bloc/blocs/base/no_data_state.dart';
import 'package:demo_flutter_bloc/blocs/register/register_bloc.dart';
import 'package:demo_flutter_bloc/constants.dart';
import 'package:demo_flutter_bloc/pages/base/base_state.dart';
import 'package:demo_flutter_bloc/widgets/back_button_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_button_widget.dart';
import 'package:demo_flutter_bloc/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends BaseState<RegisterPage, RegisterBloc> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<RegisterBloc, NoDataState>(
      builder: (_, __) {
        return _buildView();
      },
    );
  }

  Widget _buildView() {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _customAppbarWidget(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 4),
                        _titleWidget(),
                        const SizedBox(height: 33),
                        _formWidget(),
                        const SizedBox(height: 15),
                        _btnSubmitWidget(),
                        const SizedBox(height: 32),
                        _policyWidget(),
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
      padding: EdgeInsets.symmetric(
        vertical: 12.responsive(),
      ),
      child: BackButtonWidget(
        onTap: () => Navigator.maybePop(context),
      ),
    );
  }

  Widget _titleWidget() {
    return Text(
      "Register",
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w400,
        fontSize: 36.responsive(),
        fontFamily: FontConstants.comfortaa,
      ),
    );
  }

  Widget _formWidget() {
    return Column(
      children: <Widget>[
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
        const SizedBox(height: 16),
        TextFieldWidget(
          controller: bloc.rePasswordController,
          obscureText: true,
          hintText: "Re-enter password",
        ),
      ],
    );
  }

  Widget _btnSubmitWidget() {
    return TextButtonWidget(
      text: "SIGN UP",
      onPress: bloc.onSubmit,
    );
  }

  Widget _policyWidget() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          // height: 1.3,
          fontWeight: FontWeight.w400,
          fontSize: 13.responsive(),
          color: Theme.of(context).primaryColor,
        ),
        text: "By signing up, you agree to Photo’s ",
        children: const <InlineSpan>[
          TextSpan(
            text: "Terms of Service",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: " and ",
          ),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ".",
          ),
        ],
      ),
    );
  }
}
