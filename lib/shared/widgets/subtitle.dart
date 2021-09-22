import 'package:flutter/material.dart';

@immutable
class Subtitle extends StatelessWidget {
  const Subtitle({Key? key, required this.text, this.color}) : super(key: key);
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).primaryTextTheme;
    return Text(
      text,
      style: themeData.subtitle1!.copyWith(color: color),
    );
  }
}
