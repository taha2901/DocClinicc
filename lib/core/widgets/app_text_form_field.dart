import 'package:doc_clinic/core/theming/colors.dart';
import 'package:doc_clinic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  // final String labelText;
  final String? Function(String?) validator;
  // final TextInputType? keyboardType;
  // final TextInputAction? textInputAction;
  final TextEditingController? controller;
  // final FocusNode? focusNode;
  // final ValueChanged<String>? onFieldSubmitted;
  // final ValueChanged<String>? onChanged;
  // final VoidCallback? onTap;
  final Color? backFroundColor;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.backFroundColor,
    required this.validator,
    this.controller, this.preffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:  (value){
        return validator(value);
      },
      decoration: InputDecoration(
        
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  const BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  const BorderSide(color: Colors.white, width: 2),
            ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Colors.red, width: 1.3),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        hintStyle: hintStyle ?? TextStyles.font16WhitePoppins,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: preffixIcon,
        fillColor: backFroundColor ?? ColorsManager.moreLightGrey,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      // style: TextStyles.font14DarkBlueMedium,
    );
  }
}