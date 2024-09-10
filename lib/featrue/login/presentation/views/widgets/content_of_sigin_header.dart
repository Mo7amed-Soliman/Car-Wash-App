import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContentOfSiginHeader extends StatelessWidget {
  const ContentOfSiginHeader({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(height * 0.07),
          Text(
            AppStrings.signIntoYourAccount,
            style: AppTextStyles.openSansBold28.copyWith(
              color: AppColors.white,
            ),
          ),
          const Gap(3),
          Text(
            AppStrings.welcomeBack,
            style: AppTextStyles.openSansRegular20.copyWith(
              color: AppColors.white,
            ),
          ),
          const Gap(3),
          Text(
            AppStrings.selectMethodToLogIn,
            style: AppTextStyles.openSansRegular20.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
