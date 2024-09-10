import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/content_of_sigin_header.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_or_login_with_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInHeaderLandscape extends StatelessWidget {
  const SignInHeaderLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width * 0.45,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(defaultRadius * 2),
          topRight: Radius.circular(defaultRadius * 2),
        ),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(30),
            ContentOfSiginHeader(height: height),
            const Gap(30),
            //! or login with
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: CustomOrLoginWithWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
