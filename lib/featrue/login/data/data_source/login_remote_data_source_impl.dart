import 'dart:developer';

import 'package:car_wash_app/featrue/login/data/data_source/login_remote_date_source.dart';
import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  @override
  Future<void> loginWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
