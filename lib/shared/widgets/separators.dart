import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
class TinySeparator extends StatelessWidget {
  const TinySeparator({Key? key, this.factor = 1}) : super(key: key);
  final double factor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h * factor,
    );
  }
}

@immutable
class SmallSeparator extends StatelessWidget {
  const SmallSeparator({Key? key, this.factor = 1}) : super(key: key);
  final double factor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h * factor,
    );
  }
}
