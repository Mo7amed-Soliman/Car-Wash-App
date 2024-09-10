import 'package:car_wash_app/core/networking/failuer.dart';
import 'package:car_wash_app/core/use_cases/param_use_case.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:car_wash_app/featrue/login/domain/repos/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginWithEmailAndPasswordUseCase extends UseCase<void, LoginEntity> {
  final LoginRepo loginRepo;

  LoginWithEmailAndPasswordUseCase(this.loginRepo);

  @override
  Future<Either<Failuer, void>> call(LoginEntity params) async {
    return await loginRepo.loginWithEmailAndPassword(loginEntity: params);
  }
}
