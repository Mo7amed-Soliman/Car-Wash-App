part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {}

final class LoginFailed extends LoginState {
  final String errMessage;

  LoginFailed({required this.errMessage});
}


final class ValidateState extends LoginState {}


final class ChangePasswordVisibilityState extends LoginState {}
