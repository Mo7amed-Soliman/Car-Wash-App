import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCheckbox(),
        Text(
          AppStrings.rememberMe,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
