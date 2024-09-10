import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/content_of_sigin_header.dart';
import 'package:flutter/material.dart';

class SignInHeaderPortrait extends StatelessWidget {
  const SignInHeaderPortrait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(defaultRadius * 2),
          bottomRight: Radius.circular(defaultRadius * 2),
        ),
        color: AppColors.primaryColor,
      ),
      child: ContentOfSiginHeader(height: height),
    );
  }
}
