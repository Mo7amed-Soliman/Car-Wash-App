import 'package:car_wash_app/core/services/dependency_injection.dart';
import 'package:car_wash_app/featrue/login/presentation/manger/login_cubit/login_cubit.dart';
import 'package:car_wash_app/featrue/login/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: const LoginViewBody(),
      ),
    );
  }
}
