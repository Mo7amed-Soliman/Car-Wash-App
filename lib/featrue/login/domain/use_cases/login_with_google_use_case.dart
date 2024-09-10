import 'package:car_wash_app/core/networking/failuer.dart';
import 'package:car_wash_app/core/use_cases/no_param_use_case.dart';
import 'package:car_wash_app/featrue/login/domain/repos/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginWithGoogleUseCase extends UseCase<void> {
  final LoginRepo loginRepo;

  LoginWithGoogleUseCase(this.loginRepo);

  @override
  Future<Either<Failuer, void>> call() async {
    return await loginRepo.loginWithGoogle();
  }
}
