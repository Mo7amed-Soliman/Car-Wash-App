import 'package:car_wash_app/core/helpers/utils/app_assets.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/custom_bottom_get_started_view.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetStartedViewBodyPortrait extends StatelessWidget {
  const GetStartedViewBodyPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(height * 0.08),
          const CustomTextSpan(),
          const Expanded(
            child: Image(
              image: AssetImage(
                AppAssets.getStarted,
              ),
            ),
          ),
          const CustomBottomGetStartedView(),
          Gap(height * 0.06),
        ],
      ),
    );
  }
}
