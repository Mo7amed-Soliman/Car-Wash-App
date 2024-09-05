import 'package:car_wash_app/core/helpers/extension/navigation_extension.dart';
import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomBottomGetStartedView extends StatelessWidget {
  const CustomBottomGetStartedView({super.key, this.width});
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextButton(
        onPressed: () async {
          context.pushReplacementNamed(Routes.loginView);
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.getStarted,
              style: AppTextStyles.openSansSemiBold22,
            ),
            Gap(10),
            Icon(
              Icons.arrow_forward_sharp,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
