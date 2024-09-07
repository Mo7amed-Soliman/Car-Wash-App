abstract class Failuer {
  final String errMessage;

  Failuer({required this.errMessage});
}

class FireBaseFailuer extends Failuer {
  FireBaseFailuer({required super.errMessage});

  factory FireBaseFailuer.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return FireBaseFailuer(
          errMessage: 'The email is badly formatted.',
        );
      case 'invalid-credential':
        return FireBaseFailuer(
          errMessage:
              'The password is invalid or the user does not have a password.',
        );
      case 'user-not-found':
        return FireBaseFailuer(
          errMessage: 'There is no user corresponding to this email.',
        );
      case 'wrong-password':
        return FireBaseFailuer(
          errMessage:
              'The password is invalid or the user does not have a password.',
        );
      default:
        return FireBaseFailuer(
          errMessage: 'Something went wrong, please try again later.',
        );
    }
  }
}
