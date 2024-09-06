import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/core/widgets/account_status_widget.dart';
import 'package:car_wash_app/core/widgets/custom_bottom.dart';
import 'package:car_wash_app/core/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomFormLandscape extends StatelessWidget {
  const CustomFormLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Form(
        key: GlobalKey<FormState>(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Gap(height * 0.06),
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
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility,
                  color: AppColors.grey,
                ),
              ),
            ),
            Gap(height * 0.16),
            CustomBottom(
              text: AppStrings.login,
              onPressed: () {},
            ),
            const Gap(12),
            AccountStatusWidget(
              text1: AppStrings.dontHaveAccount,
              text2: AppStrings.signUp,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
