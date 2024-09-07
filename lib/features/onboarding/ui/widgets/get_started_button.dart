import 'package:doc_clinic/core/helpers/extentions.dart';
import 'package:doc_clinic/core/routings/routers.dart';
import 'package:doc_clinic/core/theming/colors.dart';
import 'package:doc_clinic/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          
            backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            maximumSize: WidgetStateProperty.all(
              const Size(double.infinity, 52),
            ),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ))),
        onPressed: () {
          context.pushNamed(Routers.login);
        },
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
