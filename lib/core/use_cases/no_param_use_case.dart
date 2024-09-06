import 'package:car_wash_app/core/networking/failuer.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type> {
  Future<Either<Failuer, Type>> call();
}
