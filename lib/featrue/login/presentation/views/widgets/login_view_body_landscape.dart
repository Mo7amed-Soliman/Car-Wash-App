import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_login_form_landscape.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/signin_header_landscape.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginViewBodyLandscape extends StatelessWidget {
  const LoginViewBodyLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SignInHeaderLandscape(),
          ),
          Expanded(
            child: CustomFormLandscape(),
          ),
          Gap(10),
        ],
      ),
    );
  }
}
