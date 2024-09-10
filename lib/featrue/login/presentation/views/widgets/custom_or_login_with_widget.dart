import 'package:car_wash_app/core/helpers/utils/app_assets.dart';
import 'package:car_wash_app/core/helpers/utils/app_colors.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/app_text_styles.dart';
import 'package:car_wash_app/featrue/login/presentation/manger/login_cubit/login_cubit.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomOrLoginWithWidget extends StatelessWidget {
  const CustomOrLoginWithWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Divider(
                color: AppColors.grey,
                thickness: 2,
              ),
            ),
            const Gap(10),
            Text(
              AppStrings.orLoginWith,
              style: AppTextStyles.openSansRegular16.copyWith(
                color: AppColors.grey,
              ),
            ),
            const Gap(10),
            const Expanded(
              child: Divider(
                color: AppColors.grey,
                thickness: 2,
              ),
            ),
          ],
        ),
        const Gap(12),
        CustomCard(
          icon: AppAssets.google,
          onTap: () {
            BlocProvider.of<LoginCubit>(context).loginWithGoogle();
          },
        ),
      ],
    );
  }
}
