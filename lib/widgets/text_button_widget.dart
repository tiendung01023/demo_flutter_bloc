import 'package:flutter/material.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final VoidCallback onPress;
  final Color? textColor;
  final double? width;

  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.onPress,
    this.backgroundColor,
    this.width,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(
          vertical: 19,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
          border: Border.all(
            width: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 13.responsive(),
                color: textColor ?? Theme.of(context).backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
