import 'package:car_wash_app/core/helpers/utils/app_assets.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashViewBodyLandscape extends StatelessWidget {
  const SplashViewBodyLandscape({
    super.key,
    required Animation<double> logoScaleAnimation,
    required Animation<Offset> textSlideAnimation,
  })  : _logoScaleAnimation = logoScaleAnimation,
        _textSlideAnimation = textSlideAnimation;

  final Animation<double> _logoScaleAnimation;
  final Animation<Offset> _textSlideAnimation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScaleTransition(
          scale: _logoScaleAnimation,
          child: const Image(
            image: AssetImage(AppAssets.logo),
          ),
        ),
        const SizedBox(width: 5),
        SlideTransition(
          position: _textSlideAnimation,
          child: const Text(
            AppStrings.welcomeTo,
            textAlign: TextAlign.center,
            style: AppTextStyles.openSansRegular18,
          ),
        ),
      ],
    );
  }
}
