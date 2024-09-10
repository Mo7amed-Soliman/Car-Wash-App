import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AccountStatusWidget extends StatelessWidget {
  const AccountStatusWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1, text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppTextStyles.openSansRegular16,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: AppTextStyles.openSansRegular16.copyWith(
              color: AppColors.orange,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
