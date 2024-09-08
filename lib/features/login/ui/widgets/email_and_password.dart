import 'package:doc_clinic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          preffixIcon: Icon(
            Icons.email,
            color: Colors.white,
            size: MediaQuery.of(context).size.width * 0.09,
          ),
          hintText: 'Email',
          hintStyle: TextStyles.font16WhitePoppins,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
          backFroundColor: ColorsManager.mainBlue,
        ),
        const SizedBox(height: 16),
        AppTextFormField(
          preffixIcon: Icon(
            Icons.lock,
            color: Colors.white,
            size: MediaQuery.of(context).size.width * 0.09,
          ),
          hintText: 'Password',
          hintStyle: TextStyles.font16WhitePoppins,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
          backFroundColor: ColorsManager.mainBlue,
        ),
        const SizedBox(height: 24),
        AppTextButton(
          backgroundColor: Colors.white,
          buttonText: 'sign in',
          textStyle: TextStyles.font24WhitePoppins,
          onPressed: () {},
        ),
        Text(
          'Forget password ?',
          style: TextStyles.font16WhitePoppins,
        ),
      ],
    );
  }
}

