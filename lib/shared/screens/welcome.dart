import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sauvini/presentation/routes/router.gr.dart';
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
            SvgIcon(
              svgIconName: 'heart',
              height: 60.h,
              width: 60.w,
            ),
            const SmallSeparator(),
            const TTitle(text: 'Première fois ici ?'),
            const TinySeparator(),
            const Subtitle(
              text: "Veuillez indiquer quel type d'utilisateur vous êtes",
            ),
            const SmallSeparator(
              factor: 2,
            ),
            LargeIconButton(
              contentVPadding: 10.h,
              callBack: () {},
              icon: const SvgIcon(
                svgIconName: 'user',
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
              contentVPadding: 10.h,
              callBack: () {
                AutoRouter.of(context).push(const PLoginScreenRoute());
              },
              icon: const SvgIcon(
                svgIconName: 'pharmacist',
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
