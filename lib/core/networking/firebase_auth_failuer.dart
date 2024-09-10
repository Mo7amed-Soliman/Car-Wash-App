import 'package:car_wash_app/core/networking/failuer.dart';

class FireBaseFailuerAuth extends Failuer {
  FireBaseFailuerAuth({required super.errMessage});

  factory FireBaseFailuerAuth.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return FireBaseFailuerAuth(
          errMessage: 'The email is badly formatted.',
        );
      //! bugs in firebase login with email and password
      case 'invalid-credential':
        return FireBaseFailuerAuth(
          errMessage:
              'The password is invalid or the user does not have a password.',
        );
      case 'user-not-found':
        return FireBaseFailuerAuth(
          errMessage: 'There is no user corresponding to this email.',
        );
      case 'wrong-password':
        return FireBaseFailuerAuth(
          errMessage:
              'The password is invalid or the user does not have a password.',
        );
      default:
        return FireBaseFailuerAuth(
          errMessage: 'Something went wrong, please try again later.',
        );
    }
  }
}
