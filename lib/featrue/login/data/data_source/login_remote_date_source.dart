import 'package:car_wash_app/featrue/login/domain/entitys/login_entity.dart';

abstract class LoginRemoteDateSource {
  Future<void> login({required LoginEntity loginEntity});
}
