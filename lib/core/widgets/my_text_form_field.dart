import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.onSaved,
    this.text,
  });
  final TextEditingController controller;
  final String hintText;
  final String? text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator; //? password and Confirm pasward
  final bool? obscureText;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text ?? hintText,
          style: AppTextStyles.openSansRegular18.copyWith(
            color: Colors.black,
          ),
        ),
        const Gap(5),
        TextFormField(
          validator: validator ??
              (value) {
                if (value!.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
          controller: controller,
          obscureText: obscureText ?? false,
          onSaved: onSaved,
          keyboardType: _textInputType(hintText, context),
          onChanged: onChanged,
          cursorColor: AppColors.primaryColor,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: _getBorderStyle(),
            enabledBorder: _getBorderStyle(color: AppColors.grey),
            focusedBorder: _getBorderStyle(),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 1.5,
              vertical: defaultPadding / 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder _getBorderStyle({
  Color color = AppColors.primaryColor,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(defaultRadius),
    borderSide: BorderSide(
      color: color,
      width: 2,
    ),
  );
}

TextInputType _textInputType(String hintText, context) {
  if (hintText == 'Name') {
    return TextInputType.name;
  } else if (hintText == 'E-mail' || hintText == 'Email') {
    return TextInputType.emailAddress;
  } else if (hintText == 'Password' ||
      hintText == 'Confirm Password' ||
      hintText == 'Old Password' ||
      hintText == 'New Password' ||
      hintText == 'Repeat Password') {
    return TextInputType.visiblePassword;
  } else {
    return TextInputType.text;
  }
}
