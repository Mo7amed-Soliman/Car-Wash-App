import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:car_wash_app/featrue/login/domain/use_cases/login_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  final LoginUseCase loginUseCase;

  //? form key
  final formKey = GlobalKey<FormState>();
  //? auto validate
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //? on save
  String? email, password;

  //? login
  Future<void> loginWithEmailAndPassword() async {
    emit(LoginLoading());
    var result = await loginUseCase.call(
      LoginEntity(email: email!, password: password!),
    );
    //
    result.fold(
      (failuer) => emit(LoginFailed(errMessage: failuer.errMessage)),
      (success) => emit(LoginSuccess()),
    );
  }

  //? validate title and content and add note
  Future<void> validate() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      await loginWithEmailAndPassword();
    } else {
      autovalidateMode = AutovalidateMode.always;
      emit(ValidateState());
    }
  }

  //? password visibility
  bool passwordVisibility = true;

  void changePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
    emit(ChangePasswordVisibilityState());
  }

  Icon getSuffixIcon() {
    return passwordVisibility
        ? const Icon(Icons.visibility)
        : const Icon(Icons.visibility_off);
  }
}
