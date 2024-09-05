import 'package:car_wash_app/core/helpers/extension/navigation_extension.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/core/routes/routes.dart';
import 'package:car_wash_app/core/services/cache_helper.dart';
import 'package:car_wash_app/core/services/dependency_injection.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/splash_view_body_landscape.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/splash_view_body_portrait.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<StatefulWidget> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _logoScaleAnimation;
  late Animation<Offset> _textSlideAnimation;
  bool? isFirstTime;
  @override
  void initState() {
    super.initState();

    // get first time from cache
    isFirstTime = getIt<CacheHelper>().getData(key: kIsFirstTime);

    // init animation controller
    _initAnimation();
    // navigate to next View
    _navigateToNextView();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return SplashViewBodyPortrait(
          logoScaleAnimation: _logoScaleAnimation,
          textSlideAnimation: _textSlideAnimation,
        );
      } else {
        return SplashViewBodyLandscape(
          logoScaleAnimation: _logoScaleAnimation,
          textSlideAnimation: _textSlideAnimation,
        );
      }
    });
  }

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _logoScaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
      ),
    );

    _textSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: const Offset(0, 0),
    ).animate(
      _animationController, // parent
    );

    _animationController.forward();
  }

  void _navigateToNextView() {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        if (isFirstTime == true) {
          context.pushReplacementNamed(Routes.loginView);
        } else {
          await getIt<CacheHelper>().saveData(key: kIsFirstTime, value: true);
          if (mounted) context.pushReplacementNamed(Routes.onBoardingRoute);
        }
      },
    );
  }
}
