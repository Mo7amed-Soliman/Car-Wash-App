import 'package:car_wash_app/core/networking/failuer.dart';
import 'package:car_wash_app/core/networking/firebase_auth_failuer.dart';
import 'package:car_wash_app/featrue/login/data/data_source/login_remote_data_source_impl.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:car_wash_app/featrue/login/domain/repos/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepoImpl extends LoginRepo {
  LoginRemoteDateSourceImpl remoteDateSourceImpel;
  LoginRepoImpl(this.remoteDateSourceImpel);
  @override
  Future<Either<Failuer, void>> loginWithEmailAndPassword({
    required LoginEntity loginEntity,
  }) async {
    try {
      await remoteDateSourceImpel.loginWithEmailAndPassword(
        loginEntity: loginEntity,
      );
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return left(FireBaseFailuerAuth.fromCode(e.code));
    } catch (e) {
      return left(FireBaseFailuerAuth(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failuer, void>> loginWithGoogle() async {
    try {
      await remoteDateSourceImpel.loginWithGoogle();
      return const Right(null);
    } catch (e) {
      return left(FireBaseFailuerAuth(errMessage: e.toString()));
    }
  }
}
