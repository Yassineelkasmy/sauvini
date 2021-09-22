import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sauvini/presentation/core/theme_valules.dart';
import 'package:sauvini/shared/widgets/bodytext.dart';
import 'package:sauvini/shared/widgets/large_icon_button.dart';
import 'package:sauvini/shared/widgets/separators.dart';
import 'package:sauvini/shared/widgets/subtitle.dart';
import 'package:sauvini/shared/widgets/svg_icon.dart';
import 'package:sauvini/shared/widgets/ttitle.dart';

class PSignUpScreen extends StatelessWidget {
  PSignUpScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 1.sw,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SmallSeparator(),
              SvgIcon(
                svgIconName: 'personal-information',
                height: 60.h,
                width: 60.w,
              ),
              const SmallSeparator(),
              const TTitle(
                  text: 'Nous aurons besoin de quelques informations de base'),
              const TinySeparator(),
              const Subtitle(
                text:
                    "Juste pour en savoir plus sur nos pharmaciens de confiance",
              ),
              const SmallSeparator(
                factor: 2,
              ),
              FormBuilder(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.1.sw,
                  ),
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'phone',
                        decoration: const InputDecoration(
                          hintText: 'Numéro de téléphone',
                          prefixIcon: Icon(
                            Icons.phone_rounded,
                          ),
                        ),
                      ),
                      const TinySeparator(
                        factor: 2,
                      ),
                      FormBuilderTextField(
                        name: 'password',
                        decoration: const InputDecoration(
                          hintText: "Mot de passe",
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                          ),
                        ),
                      ),
                      const TinySeparator(
                        factor: 2,
                      ),
                      FormBuilderCheckbox(
                        name: 'accept',
                        activeColor: kPrimaryColor,
                        title: const BodyText(
                          text: "Accepter les conditions d'utilisation",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SmallSeparator(
                        factor: 2,
                      ),
                      LargeIconButton(
                        callBack: () {},
                        text: const BodyText(
                          text: 'S`inscrire',
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
