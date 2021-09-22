import 'package:flutter/material.dart';

@immutable
class BodyText extends StatelessWidget {
  const BodyText({Key? key, required this.text, this.color}) : super(key: key);
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).primaryTextTheme;
    return Text(
      text,
      style: themeData.bodyText1!.copyWith(color: color),
    );
  }
}
