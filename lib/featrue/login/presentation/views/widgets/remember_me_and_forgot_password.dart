import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/remember_me_widget.dart';
import 'package:flutter/material.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  const RememberMeAndForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const RememberMeWidget(),
        InkWell(
          onTap: () {
            // Add your onTap functionality here
          },
          child: const Text(
            AppStrings.forgetPassword,
            style: AppTextStyles.openSansMedium14,
          ),
        ),
      ],
    );
  }
}
