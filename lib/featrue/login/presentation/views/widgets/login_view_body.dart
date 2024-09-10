import 'package:car_wash_app/featrue/login/presentation/views/widgets/login_view_body_landscape.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/login_view_body_portrait.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const LoginViewBodyPortrait();
        } else {
          return const LoginViewBodyLandscape();
        }
      },
    );
  }
}
