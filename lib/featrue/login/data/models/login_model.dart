import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';

class LoginModel extends LoginEntity {
  LoginModel({
    required super.email,
    required super.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
