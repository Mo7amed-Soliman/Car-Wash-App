import 'package:car_wash_app/core/helpers/extension/navigation_extension.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/routes/routes.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_login_form_portrait.dart';
import 'package:car_wash_app/core/widgets/account_status_widget.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/sigin_header_portait.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginViewBodyPortrait extends StatelessWidget {
  const LoginViewBodyPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const SignInHeaderPortrait(),
          const Gap(10),
          // Login Form
          const CustomLoginFormPortrait(),
          const Gap(10),
          // Have an account
          AccountStatusWidget(
            text1: AppStrings.dontHaveAccount,
            text2: AppStrings.signUp,
            onTap: () {
              context.pushNamed(Routes.signUpView);
            },
          ),
        ],
      ),
    );
  }
}
