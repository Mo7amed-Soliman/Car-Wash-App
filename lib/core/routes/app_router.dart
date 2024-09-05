import 'package:car_wash_app/core/routes/routes.dart';
import 'package:car_wash_app/featrue/login/presentation/views/login_view.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/get_started_view.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get getRoutes {
  return {
    Routes.initialRoute: (context) => const SplashView(),
    Routes.onBoardingRoute: (context) => const GetStartedView(),
    Routes.loginView: (context) => const LoginView(),
  };
}
