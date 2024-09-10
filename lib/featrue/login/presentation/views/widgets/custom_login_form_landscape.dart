import 'package:car_wash_app/core/helpers/extension/navigation_extension.dart';
import 'package:car_wash_app/core/helpers/functions/show_toast.dart';
import 'package:car_wash_app/core/helpers/utils/app_strings.dart';
import 'package:car_wash_app/core/helpers/utils/constants.dart';
import 'package:car_wash_app/core/routes/routes.dart';
import 'package:car_wash_app/core/widgets/account_status_widget.dart';
import 'package:car_wash_app/core/widgets/custom_bottom.dart';
import 'package:car_wash_app/core/widgets/my_text_form_field.dart';
import 'package:car_wash_app/featrue/login/presentation/manger/login_cubit/login_cubit.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/remember_me_and_forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomFormLandscape extends StatelessWidget {
  const CustomFormLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginWithEmailAndPasswordSuccess ||
              state is LoginWithGoogleSuccess) {
            showToast(message: 'Login Success , Welcome Back');
          }
          if (state is LoginWithEmailAndPasswordFailed) {
            showToast(message: state.errMessage, color: Colors.red[400]);
          }
        },
        builder: (context, state) {
          return Form(
            key: context.read<LoginCubit>().formKey,
            autovalidateMode: context.read<LoginCubit>().autovalidateMode,
            child: Column(
              children: [
                Gap(height * 0.06),
                // email
                MyTextFormField(
                  hintText: AppStrings.hintTextEmail,
                  text: AppStrings.email,
                  onSaved: (email) {
                    context.read<LoginCubit>().email = email;
                  },
                ),
                const Gap(12),
                // password
                MyTextFormField(
                  hintText: AppStrings.hintTextPassword,
                  text: AppStrings.password,
                  obscureText: context.read<LoginCubit>().passwordVisibility,
                  onSaved: (password) {
                    context.read<LoginCubit>().password = password;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      context.read<LoginCubit>().changePasswordVisibility();
                    },
                    icon: context.read<LoginCubit>().getSuffixIcon(),
                  ),
                ),
                const Gap(12),
                const RememberMeAndForgotPassword(),
                const Gap(12),
                CustomBottom(
                  isLoding: state is LoginWithEmailAndPasswordLoading,
                  text: AppStrings.login,
                  onPressed: () async {
                    await context.read<LoginCubit>().validate();
                  },
                ),
                const Gap(12),
                AccountStatusWidget(
                  text1: AppStrings.dontHaveAccount,
                  text2: AppStrings.signUp,
                  onTap: () {},
                ),
                const Gap(20),
              ],
            ),
          );
        },
      ),
    );
  }
}
