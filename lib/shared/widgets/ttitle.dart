import 'package:flutter/material.dart';

@immutable
class TTitle extends StatelessWidget {
  const TTitle({Key? key, required this.text, this.color}) : super(key: key);
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).primaryTextTheme;
    return Text(
      text,
      style: themeData.headline1!.copyWith(color: color),
    );
  }
}
