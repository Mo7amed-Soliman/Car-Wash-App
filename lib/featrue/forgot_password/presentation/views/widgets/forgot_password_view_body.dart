import 'package:car_wash_app/featrue/forgot_password/presentation/views/widgets/forgot_password_view_body_landscape.dart';
import 'package:car_wash_app/featrue/forgot_password/presentation/views/widgets/forgot_password_view_body_portrait.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const ForgotPasswordViewBodyPortrait();
        } else {
          return const ForgotPasswordViewBodyLandscape();
        }
      },
    );
  }
}
