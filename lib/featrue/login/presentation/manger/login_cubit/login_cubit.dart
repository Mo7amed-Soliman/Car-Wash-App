import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:car_wash_app/featrue/login/domain/use_cases/login_use_case.dart';
import 'package:car_wash_app/featrue/login/domain/use_cases/login_with_google_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.loginWithEmailAndPasswordUseCase,
    this.loginWithGoogleUseCase,
  ) : super(LoginInitial());
  final LoginWithEmailAndPasswordUseCase loginWithEmailAndPasswordUseCase;
  final LoginWithGoogleUseCase loginWithGoogleUseCase;

  //? form key
  final formKey = GlobalKey<FormState>();
  //? auto validate
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //? on save
  String? email, password;

  //? login
  Future<void> loginWithEmailAndPassword() async {
    emit(LoginWithEmailAndPasswordLoading());
    var result = await loginWithEmailAndPasswordUseCase.call(
      LoginEntity(email: email!, password: password!),
    );
    //
    result.fold(
      (failuer) =>
          emit(LoginWithEmailAndPasswordFailed(errMessage: failuer.errMessage)),
      (success) => emit(LoginWithEmailAndPasswordSuccess()),
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

  // login with google
  Future<void> loginWithGoogle() async {
    emit(LoginWithGoogleLoading());
    var result = await loginWithGoogleUseCase.call();
    //
    result.fold(
      (failuer) => emit(LoginWithGoogleFailed()),
      (success) => emit(LoginWithGoogleSuccess()),
    );
  }
}
