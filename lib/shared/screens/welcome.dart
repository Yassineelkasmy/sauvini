import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sauvini/shared/widgets/bodytext.dart';
import 'package:sauvini/shared/widgets/large_icon_button.dart';
import 'package:sauvini/shared/widgets/separators.dart';
import 'package:sauvini/shared/widgets/subtitle.dart';
import 'package:sauvini/shared/widgets/svg_icon.dart';
import 'package:sauvini/shared/widgets/ttitle.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 1.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SvgIcon(svgIconName: 'heart'),
            const SmallSeparator(),
            const TTitle(text: 'Première fois ici?'),
            const TinySeparator(),
            const Subtitle(
              text: "Veuillez indiquer quel type d'utilisateur vous êtes",
            ),
            const SmallSeparator(
              factor: 2,
            ),
            LargeIconButton(
              callBack: () {},
              icon: SvgIcon(
                svgIconName: 'user',
                height: 35.h,
                width: 35.w,
                color: Colors.white,
              ),
              text: const BodyText(
                text: 'Utilisateur régulier',
                color: Colors.white,
              ),
            ),
            const TinySeparator(
              factor: 2,
            ),
            LargeIconButton(
              callBack: () {},
              icon: SvgIcon(
                svgIconName: 'pharmacist',
                height: 35.h,
                width: 35.w,
              ),
              text: const BodyText(
                text: 'Pharmacien',
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
