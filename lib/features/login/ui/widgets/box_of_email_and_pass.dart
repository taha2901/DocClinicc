import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'email_and_password.dart';

class BoxOfEmailAndPassword extends StatelessWidget {
  const BoxOfEmailAndPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white, width: 8.h),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Image.asset(
            'assets/images/Logo Shapes 17.png',
            width: 74.w,
            height: 94.h,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Markaz ElAmal',
            style: TextStyles.font16WhitePeralta,
          ),
          const SizedBox(
            height: 8,
          ),
          const Form(
            child: EmailAndPassword(),
          ),
        ],
      ),
    );
  }
}
