import 'dart:developer';

import 'package:car_wash_app/featrue/login/data/data_source/login_remote_date_source.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRemoteDateSourceImpl extends LoginRemoteDateSource {
  @override
  Future<void> loginWithEmailAndPassword(
      {required LoginEntity loginEntity}) async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: loginEntity.email,
      password: loginEntity.password,
    );
    log(credential.toString());
  }
}
