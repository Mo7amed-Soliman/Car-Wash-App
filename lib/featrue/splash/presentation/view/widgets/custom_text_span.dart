import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: AppStrings.experienceThe,
            style: AppTextStyles.openSansBold30,
          ),
          TextSpan(
            text: AppStrings.ultimateCarWash,
            style: AppTextStyles.openSansBold30.copyWith(
              color: const Color(0xff00dcfe),
            ),
          ),
        ],
      ),
    );
  }
}
