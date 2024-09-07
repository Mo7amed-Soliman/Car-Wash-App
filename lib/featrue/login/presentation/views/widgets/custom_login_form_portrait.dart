import 'package:car_wash_app/core/helpers/functions/show_toast.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/core/widgets/custom_bottom.dart';
import 'package:car_wash_app/core/widgets/my_text_form_field.dart';
import 'package:car_wash_app/featrue/login/presentation/manger/login_cubit/login_cubit.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/custom_or_login_with_widget.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/remember_me_and_forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomLoginFormPortrait extends StatefulWidget {
  const CustomLoginFormPortrait({
    super.key,
  });

  @override
  State<CustomLoginFormPortrait> createState() =>
      _CustomLoginFormPortraitState();
}

class _CustomLoginFormPortraitState extends State<CustomLoginFormPortrait> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            showToast(message: 'Login Success , Welcome Back');
          }
          if (state is LoginFailed) {
            showToast(message: state.errMessage, color: Colors.red[400]);
          }
        },
        builder: (context, state) {
          return Form(
            key: context.read<LoginCubit>().formKey,
            autovalidateMode: context.read<LoginCubit>().autovalidateMode,
            child: Column(
              children: [
                //! email
                MyTextFormField(
                  hintText: AppStrings.hintTextEmail,
                  text: AppStrings.email,
                  onSaved: (email) {
                    context.read<LoginCubit>().email = email;
                  },
                ),
                const Gap(12),
                //! password
                MyTextFormField(
                  hintText: AppStrings.hintTextPassword,
                  text: AppStrings.password,
                  obscureText: context.read<LoginCubit>().passwordVisibility,
                  suffixIcon: IconButton(
                    onPressed: () {
                      context.read<LoginCubit>().changePasswordVisibility();
                    },
                    icon: context.read<LoginCubit>().getSuffixIcon(),
                  ),
                  onSaved: (password) {
                    context.read<LoginCubit>().password = password;
                  },
                ),
                const Gap(12),
                const RememberMeAndForgotPassword(),
                const Gap(12),
                CustomBottom(
                  isLoding: state is LoginLoading,
                  text: AppStrings.login,
                  
                  onPressed: () async {
                    await context.read<LoginCubit>().validate();
                  },
                ),
                const Gap(12),
                //! or login with
                const CustomOrLoginWithWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
