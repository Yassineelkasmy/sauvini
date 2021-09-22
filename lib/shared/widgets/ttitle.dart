import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
class TTitle extends StatelessWidget {
  const TTitle({Key? key, required this.text, this.color}) : super(key: key);
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
      child: Text(
        text,
        style: themeData.headline1!.copyWith(color: color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
