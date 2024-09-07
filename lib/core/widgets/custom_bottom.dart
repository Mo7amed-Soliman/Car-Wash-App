import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    this.width,
    required this.text,
    this.onPressed,
    this.isLoding = false,
  });
  final double? width;
  final String text;
  final VoidCallback? onPressed;
  final bool isLoding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 1.7),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: isLoding
            ? const SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: AppColors.white,
                ),
              )
            : Text(
                text,
                style: AppTextStyles.openSansRegular20.copyWith(
                  color: AppColors.white,
                ),
              ),
      ),
    );
  }
}
