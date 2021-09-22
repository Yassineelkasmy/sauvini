import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sauvini/presentation/core/theme_valules.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
class SvgIcon extends StatelessWidget {
  const SvgIcon({
    Key? key,
    required this.svgIconName,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);
  final String svgIconName;
  final double? width;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$svgIconName.svg',
      color: color ?? kPrimaryColor,
      height: height ?? 35.h,
      width: width ?? 35.sw,
    );
  }
}
