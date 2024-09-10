import 'package:car_wash_app/core/networking/failuer.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<Failuer, void>> loginWithEmailAndPassword(
      {required LoginEntity loginEntity});

  Future<Either<Failuer, void>> loginWithGoogle();
}
