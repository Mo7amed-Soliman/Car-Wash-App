part of 'login_cubit.dart';

sealed class LoginState {}

// login with email and password
final class LoginInitial extends LoginState {}

final class LoginWithEmailAndPasswordLoading extends LoginState {}

final class LoginWithEmailAndPasswordSuccess extends LoginState {}

final class LoginWithEmailAndPasswordFailed extends LoginState {
  final String errMessage;

  LoginWithEmailAndPasswordFailed({required this.errMessage});
}

// google login

final class LoginWithGoogleLoading extends LoginState {}

final class LoginWithGoogleSuccess extends LoginState {}

final class LoginWithGoogleFailed extends LoginState {}

// validate
final class ValidateState extends LoginState {}

// change password
final class ChangePasswordVisibilityState extends LoginState {}
