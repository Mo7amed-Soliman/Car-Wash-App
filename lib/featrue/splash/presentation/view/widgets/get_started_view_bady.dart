import 'package:car_wash_app/featrue/splash/presentation/view/widgets/get_started_view_body_landscape.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/get_started_view_body_portrait.dart';
import 'package:flutter/material.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const GetStartedViewBodyPortrait();
        } else {
          return const GetStartedViewBodyLandscape();
        }
      },
    );
  }
}
