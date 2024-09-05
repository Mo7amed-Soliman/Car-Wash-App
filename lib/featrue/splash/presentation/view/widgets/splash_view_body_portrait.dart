import 'package:car_wash_app/core/helpers/utils/app_assets.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashViewBodyPortrait extends StatelessWidget {
  const SplashViewBodyPortrait({
    super.key,
    required Animation<double> logoScaleAnimation,
    required Animation<Offset> textSlideAnimation,
  })  : _logoScaleAnimation = logoScaleAnimation,
        _textSlideAnimation = textSlideAnimation;

  final Animation<double> _logoScaleAnimation;
  final Animation<Offset> _textSlideAnimation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ScaleTransition(
          scale: _logoScaleAnimation,
          child: const Image(
            image: AssetImage(AppAssets.logo),
          ),
        ),
        const SizedBox(height: 5),
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
