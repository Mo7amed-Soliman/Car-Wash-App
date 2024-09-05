 
import 'package:car_wash_app/core/helpers/utils/app_assets.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/custom_bottom_get_started_view.dart';
import 'package:car_wash_app/featrue/splash/presentation/view/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetStartedViewBodyLandscape extends StatelessWidget {
  const GetStartedViewBodyLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding + 10),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextSpan(),
              Gap(height * 0.15),
              CustomBottomGetStartedView(
                width: width * 0.35,
              ),
            ],
          ),
          const Expanded(
            child: Image(
              image: AssetImage(
                AppAssets.getStarted,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
