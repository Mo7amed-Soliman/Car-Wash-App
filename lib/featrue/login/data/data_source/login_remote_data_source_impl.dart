import 'package:car_wash_app/featrue/login/data/data_source/remote_date_source.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RemoteDateSourceImpel extends RemoteDateSource {
  @override
  Future<void> login({required LoginEntity loginEntity}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: loginEntity.email,
      password: loginEntity.password,
    );
  }
}
