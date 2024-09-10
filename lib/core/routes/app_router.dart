import 'package:car_wash_app/core/routes/routes.dart';
import 'package:car_wash_app/featrue/forgot_password/presentation/views/forgot_password_view.dart';
import 'package:car_wash_app/featrue/login/presentation/views/login_view.dart';
import 'package:car_wash_app/featrue/sign_up/presentation/views/sign_up_view.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/get_started_view.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get getRoutes {
  return {
    Routes.initialRoute: (context) => const SplashView(),
    Routes.onBoardingRoute: (context) => const GetStartedView(),
    Routes.loginView: (context) => const LoginView(),
    Routes.forgotPassword: (context) => const ForgotPasswordView(),
    Routes.signUpView: (context) => const SignUpView(),
  };
}
