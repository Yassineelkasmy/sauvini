import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sauvini/presentation/pharmacist/login/screens/sign_up.dart';
import 'package:sauvini/presentation/routes/router.gr.dart';
import 'package:sauvini/shared/widgets/bodytext.dart';
import 'package:sauvini/shared/widgets/large_icon_button.dart';
import 'package:sauvini/shared/widgets/separators.dart';
import 'package:sauvini/shared/widgets/subtitle.dart';
import 'package:sauvini/shared/widgets/svg_icon.dart';
import 'package:sauvini/shared/widgets/ttitle.dart';

class PLoginScreen extends StatelessWidget {
  const PLoginScreen({Key? key}) : super(key: key);

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
              svgIconName: 'mobile',
              height: 60.h,
              width: 60.w,
            ),
            const SmallSeparator(),
            const TTitle(
                text: 'Bienvenue dans votre assistant virtuel de pharmacie'),
            const TinySeparator(),
            const Subtitle(
              text: "Comment souhaitez-vous continuer ?",
            ),
            const SmallSeparator(
              factor: 2,
            ),
            LargeIconButton(
              callBack: () {},
              icon: SvgIcon(
                svgIconName: 'right-arrow',
                color: Colors.white,
                height: 25.h,
                width: 25.w,
              ),
              text: const BodyText(
                text: "J'ai déjà un compte",
                color: Colors.white,
              ),
            ),
            const TinySeparator(
              factor: 2,
            ),
            LargeIconButton(
              callBack: () {
                AutoRouter.of(context).push(PSignUpScreenRoute());
              },
              icon: SvgIcon(
                svgIconName: 'plus',
                height: 25.h,
                width: 25.w,
              ),
              text: const BodyText(
                text: 'Créer un compte pharmacien',
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
