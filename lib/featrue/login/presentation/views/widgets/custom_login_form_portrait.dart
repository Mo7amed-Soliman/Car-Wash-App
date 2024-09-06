import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/core/widgets/custom_bottom.dart';
import 'package:car_wash_app/core/widgets/my_text_form_field.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_or_login_with_widget.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/remember_me_and_forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomLoginFormPortrait extends StatefulWidget {
  const CustomLoginFormPortrait({
    super.key,
  });

  @override
  State<CustomLoginFormPortrait> createState() =>
      _CustomLoginFormPortraitState();
}

class _CustomLoginFormPortraitState extends State<CustomLoginFormPortrait> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Form(
        key: GlobalKey<FormState>(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            // email
            MyTextFormField(
              controller: TextEditingController(),
              hintText: AppStrings.hintTextEmail,
              text: AppStrings.email,
            ),
            const Gap(12),
            // password
            MyTextFormField(
              controller: TextEditingController(),
              hintText: AppStrings.hintTextPassword,
              text: AppStrings.password,
              obscureText: true,
              suffixIcon: const Icon(
                Icons.visibility,
                color: AppColors.grey,
              ),
            ),
            const Gap(12),
            const RememberMeAndForgotPassword(),
            const Gap(12),
            CustomBottom(
              text: AppStrings.login,
              onPressed: () {},
            ),
            const Gap(12),
            //! or login with
            const CustomOrLoginWithWidget(),
          ],
        ),
      ),
    );
  }
}
