import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sauvini/presentation/core/theme_valules.dart';

@immutable
class LargeIconButton extends StatelessWidget {
  const LargeIconButton({
    Key? key,
    this.icon,
    required this.callBack,
    required this.text,
    this.backgroundColor,
    this.padding,
    this.contentVPadding,
    this.contentHPadding,
  }) : super(key: key);
  final Widget text;
  final Color? backgroundColor;
  final Widget? icon;
  final Function callBack;
  final double? padding;
  final double? contentVPadding;
  final double? contentHPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0.1.sw),
      child: Material(
        elevation: 3,
        color: backgroundColor ?? kPrimaryColor,
        borderRadius: BorderRadius.circular(10.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.r),
          onTap: () {
            callBack();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: contentVPadding ?? 15.h,
              horizontal: contentHPadding ?? 10.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (icon != null) icon!,
                if (icon != null)
                  SizedBox(
                    width: 10.w,
                  ),
                text
              ],
            ),
          ),
        ),
      ),
    );
  }
}
