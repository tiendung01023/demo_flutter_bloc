import 'package:demo_flutter_bloc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const BackButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.responsive(),
        ),
        child: SvgPicture.asset(
          ImageConstants.backButton,
          height: 11.responsive(),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
