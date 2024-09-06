import 'package:car_wash_app/core/networking/failuer.dart';
import 'package:car_wash_app/featrue/login/data/data_source/login_remote_data_source_impl.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:car_wash_app/featrue/login/domain/repos/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepoImpl extends LoginRepo {
  RemoteDateSourceImpel remoteDateSourceImpel;
  LoginRepoImpl({required this.remoteDateSourceImpel});
  @override
  Future<Either<Failuer, void>> login(
      {required LoginEntity loginEntity}) async {
    try {
      remoteDateSourceImpel.login(loginEntity: loginEntity);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return left(FireBaseFailuer.fromCode(e.code));
    } catch (e) {
      return left(FireBaseFailuer(errMessage: e.toString()));
    }
  }
}
