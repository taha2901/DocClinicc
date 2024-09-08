import 'package:doc_clinic/core/helpers/extentions.dart';
import 'package:doc_clinic/core/theming/colors.dart';
import 'package:doc_clinic/core/theming/styles.dart';
import 'package:doc_clinic/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import '../../../core/routings/routers.dart';
import 'widgets/box_of_email_and_pass.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManager.mainBlue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: ColorsManager.mainBlue,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: BoxOfEmailAndPassword(),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyles.font16WhitePoppins,
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed(Routers.signUp);
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyles.font16WhitePoppins,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
